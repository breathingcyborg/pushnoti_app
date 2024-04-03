import 'package:pushnoti_app/api/dio_factory.dart';
import 'package:pushnoti_app/app/api/api.dart';
import 'package:pushnoti_app/auth/apis/api.dart';
import 'package:pushnoti_app/notifications/services/fcm_service.dart';
import 'package:pushnoti_app/auth/services/firebase_auth_service.dart';
import 'package:pushnoti_app/di.dart';
import 'package:pushnoti_app/notifications/apis/fcm_tokens_api.dart';
import 'package:pushnoti_app/notifications/services/local_notifications_service.dart';
import 'package:pushnoti_app/notifications/apis/notifications_api.dart';
import 'package:pushnoti_app/notifications/repos/users_notifications_repo.dart';
import 'package:pushnoti_app/profile/apis/api.dart';

registerServices() {
  di.registerSingleton(createDio());
  di.registerSingleton(AuthApi());
  di.registerSingleton(ProfileApi());
  di.registerSingleton(FirebaseAuthService());
  di.registerSingleton(FCMTokensApi());
  di.registerSingleton(FCMService());
  di.registerSingleton(LocalNotificationsService());
  di.registerSingleton(NotificationsApi());
  di.registerSingleton(UsersNotificationsRepo());
  di.registerSingleton(AppsApi());
}