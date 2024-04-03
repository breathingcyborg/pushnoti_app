import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:pushnoti_app/auth/services/firebase_auth_service.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/notifications/apis/fcm_tokens_api.dart';

class FCMService {
  final FirebaseAuthService _auth;
  final FCMTokensApi _tokensApi;

  FCMService({FirebaseAuthService? auth, FCMTokensApi? tokensApi})
      : _auth = auth ?? di.get<FirebaseAuthService>(),
        _tokensApi = tokensApi ?? di.get<FCMTokensApi>();

  Stream<RemoteMessage> get onForegroundMessage => FirebaseMessaging.onMessage;

  Stream<RemoteMessage> get onMessageOpenedApp => FirebaseMessaging.onMessageOpenedApp;

  syncFCMToken() async {
    // get current user and token
    var currentToken = await FirebaseMessaging.instance.getToken();
    var currentUser = _auth.getCurrentUser();

    // send token to server
    syncToken() async {
      if (currentUser != null && currentToken != null) {
        try {
          await _tokensApi.update(UpdateFCMTokenRequest(token: currentToken!));
        } catch (e) {
          await Future.delayed(const Duration(seconds: 5));
          syncToken();
        }
      }
    }

    // sync token with server
    await syncToken();

    // listen to user changes
    _auth.authStateChanges().listen((user) {
      currentUser = user;
      syncToken();
    });

    // listen to token changes and sync with server
    FirebaseMessaging.instance.onTokenRefresh.listen((token) {
      currentToken = token;
      syncToken();
    });
  }

  Future<NotificationSettings> getNotificationSettings() async {
    return FirebaseMessaging.instance.getNotificationSettings();
  }

  Future<NotificationSettings> requestPermission() async {
    return await FirebaseMessaging.instance.requestPermission();
  }

  Future<RemoteMessage?> getInitialMessage() async {
    return FirebaseMessaging.instance.getInitialMessage();
  }
}
