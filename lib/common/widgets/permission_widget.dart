import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:pushnoti_app/notifications/services/fcm_service.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/notifications/services/local_notifications_service.dart';

enum PermissionStatus {
  notDetermined,
  granted,
  notGranted,
}

class PermissionWidget extends StatefulWidget {

  final Widget child;

  const PermissionWidget({super.key, required this.child});

  @override
  State<PermissionWidget> createState() => _PermissionWidgetState();
}

class _PermissionWidgetState extends State<PermissionWidget> {

  // Firebase Cloud Messaging permission status
  AuthorizationStatus _fcmStatus = AuthorizationStatus.notDetermined;

  // are permissions required by localNotificationsPlugin granted
  // null means notDetermined
  bool? _localGranted;

  // overall status of permission 
  get _status {

    // notDetermined
    if (_fcmStatus == AuthorizationStatus.notDetermined
      || _localGranted == null) {
      return PermissionStatus.notDetermined;
    }

    // firebase cloud messaging permissions granted
    var fcmGranted = _fcmStatus == AuthorizationStatus.authorized;

    return fcmGranted && _localGranted == true
      ? PermissionStatus.granted
      : PermissionStatus.notGranted;
  }

  @override
  void initState() {
    super.initState();
    _checkStatus();
  }

  _askPermission(BuildContext context) async {

    // ask fcm permissions
    if (_fcmStatus != AuthorizationStatus.authorized) {
      var settings = await di.get<FCMService>().requestPermission();
      setState(() {
        _fcmStatus = settings.authorizationStatus;
      });
    }
    
    // ask local notifications permission
    if (_localGranted != true) {
      var localGranted = await di.get<LocalNotificationsService>().requestPermission();
      setState(() {
        _localGranted = localGranted;
      });
    }
  }

  _checkStatus() async {
    var settings = await di.get<FCMService>().getNotificationSettings();

    // check until determined
    if (settings.authorizationStatus == AuthorizationStatus.notDetermined) {
      await Future.delayed(const Duration(seconds: 1));
      return _checkStatus();
    }

    setState(() {
      _fcmStatus = settings.authorizationStatus;
    });

    var localGranted = await di.get<LocalNotificationsService>().hasPermission();
    setState(() {
      _localGranted = localGranted;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_status == PermissionStatus.granted) {
      return widget.child;
    }
    if (_status == PermissionStatus.notDetermined) {
      return _buildLoadingUi(context);
    }
    return _buildAskUi(context);
  }

  Widget _buildLoadingUi(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildAskUi(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => _askPermission(context),
            child: const Text("Grant Permission"),
          )
        ],
      ),
    );
  }
}
