import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/notifications/pages/view_notification.dart';
import 'package:pushnoti_app/notifications/services/fcm_service.dart';
import 'package:pushnoti_app/notifications/services/local_notifications_service.dart';


// Widget that listens to notifications and navigates to notification detail page.
class NotificationsListenerWidget extends StatefulWidget {
  final Widget child;

  const NotificationsListenerWidget({super.key, required this.child});

  @override
  State<NotificationsListenerWidget> createState() =>
      _NotificationsListenerWidgetState();
}

// TODO: Make it work for following case
// 
// Currently notification detail page is not shown in following case.
// 
// 1. App was in foreground
// 2. Firebase notification was not displayed, but it triggred callback which showed notification using local notifications plugin
// 3. App was terminated without dismissing the notification
// 4. Notification was clicked
// 5. App was opened.
// 
// To handle this scenario we need to 
// add onDidReceiveBackgroundNotificationResponse callback when initializing local notifications plugin (local_notifications_service.dart)
// this callback must be a simple function not part of the class (as it will run in separate dart isolate which is spawned by local_notifications_plugin)
// callback needs to be annotated with @pragma('vm:entry-point')
// when that callback is fired we extract notificationId from payload
// save it in some persistant storage (say hive)
// and add a method to local_notifications_service
// this method retrieves from persistant storage and returns the data
// it also deletes that data.
// then we need to use this method here just like we are using getInitialMessage() of firebase


class _NotificationsListenerWidgetState
    extends State<NotificationsListenerWidget> {

  // Subscriptions for Firebase messages and local notifications clicks / messages.
  late StreamSubscription<RemoteMessage> _firebaseForegroundMessageSubscription;

  late StreamSubscription<RemoteMessage>
      _firebaseNotificationClickedSubscription;

  late StreamSubscription<String> _localNotificationClickedStream;

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void initState() {
    super.initState();
    // Subscribe to Firebase messages and local notifications clicks / messages.
    _firebaseForegroundMessageSubscription =
        di.get<FCMService>().onForegroundMessage.listen(_onForegroundMessage);
    _firebaseNotificationClickedSubscription = di
        .get<FCMService>()
        .onMessageOpenedApp
        .listen(_handleFirebaseNotificationClick);
    _localNotificationClickedStream = di
        .get<LocalNotificationsService>()
        .notificationClickedStream
        .listen(_navigateToNotificationDetailScreen);
    _checkFirebaseInitialMessage();
  }

  
  // Check if the terminated app was opened by the user clicking a Firebase notification.
  // If so, navigate to the notification detail screen.
  Future<void> _checkFirebaseInitialMessage() async {
    var message = await di.get<FCMService>().getInitialMessage();
    if (message != null) {
      _handleFirebaseNotificationClick(message);
    }
  }

  // Navigate to the notification detail page with the given ID
  void _navigateToNotificationDetailScreen(String? notificationId) {
    if (notificationId == null) {
      return;
    }
    if (context.mounted) {
      context.pushNamed(ViewNotification.routeName,
          pathParameters: {'notificationId': notificationId});
    }
  }

  // Handle the scenario where the app was in the background and the user clicked
  // a Firebase notification that brought the app to the foreground. Navigate to the detail
  // page of that notification.
  void _handleFirebaseNotificationClick(RemoteMessage message) {
    var notificationId = message.data['notificationId'];
    _navigateToNotificationDetailScreen(notificationId);
  }

  // Handle the scenario where the app is in the foreground and a new Firebase
  // notification is received. Since Firebase won't show the notification in
  // this case, use the local notifications service to display it.
  void _onForegroundMessage(RemoteMessage remoteMessage) {
    di.get<LocalNotificationsService>().showRemoteNotification(remoteMessage);
  }

  @override
  void dispose() {
    super.dispose();
    // Cancel all subscriptions to avoid memory leaks
    _firebaseForegroundMessageSubscription.cancel();
    _firebaseNotificationClickedSubscription.cancel();
    _localNotificationClickedStream.cancel();
  }
}
