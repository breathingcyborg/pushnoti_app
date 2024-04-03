import 'dart:async';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:pushnoti_app/notifications/data/channels.dart';
import 'package:pushnoti_app/notifications/utils.dart';

class LocalNotificationsService {

  final FlutterLocalNotificationsPlugin _plugin;

  final StreamController<String> _notificationClickedStreamController = StreamController.broadcast();

  // subscribe to this stream to get id of notifications clicked by the user
  Stream<String> get notificationClickedStream => _notificationClickedStreamController.stream;

  LocalNotificationsService() : _plugin = FlutterLocalNotificationsPlugin();

  initialize() {
    const androidInitializationSettings = AndroidInitializationSettings('notification_icon');
    const initializationSettings = InitializationSettings(
      android: androidInitializationSettings
    );
    _plugin.initialize(
      initializationSettings, 
      onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
    );
    _createChannels();
  }

  _createChannels() async {
    var androidImpl =_plugin.resolvePlatformSpecificImplementation
      <AndroidFlutterLocalNotificationsPlugin>();
  
    for (var channel in channels.values) {
      await androidImpl?.createNotificationChannel(channel);
    }
  }

  _onDidReceiveNotificationResponse(NotificationResponse details) {
    var notificationId = details.payload;
    if (notificationId == null) {
      return;
    }
    _notificationClickedStreamController.sink.add(notificationId);
  }

  hasPermission() {
    return _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .areNotificationsEnabled();
  }

  requestPermission() {
    return _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .requestNotificationsPermission();
  }

  showRemoteNotification(RemoteMessage remoteMessage) async {

    var notificationId = remoteMessage.data['notificationId'];
    var title = remoteMessage.notification?.title;
    var body = remoteMessage.notification?.body;
    var id = getAndroidMessageId(remoteMessage.messageId);

    _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .getNotificationChannels();

    if (Platform.isAndroid) {
      var androidImpl =
          _plugin.resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      if (androidImpl == null) {
        return;
      }

      var channelId = remoteMessage.notification?.android?.channelId ??
        'standard';

      var channel = channels.containsKey(channelId)
        ? channels[channelId]
        : channels['standard'];

      var priority = priorityMap.containsKey(channelId)
        ? priorityMap[channelId]
        : Priority.low;

      try {
        androidImpl.show(id, title, body,
          notificationDetails: AndroidNotificationDetails(
            channel!.id,
            channel.name,
            priority: priority!,
            playSound: channel.playSound,
            sound: channel.sound,
            enableVibration: channel.enableVibration,
            vibrationPattern: channel.vibrationPattern,
            enableLights: channel.enableLights,
            ledColor: channel.ledColor,
            ledOnMs: channel.ledColor != null ? 1000 : null,
            ledOffMs: channel.ledColor != null ? 1000 : null,
            icon: 'notification_icon',
            styleInformation: const DefaultStyleInformation(false, false),
          ),
          payload: notificationId
        );
        // ignore: empty_catches
      } on PlatformException {}
    }
  }
}
