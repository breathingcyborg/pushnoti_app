import 'package:dio/dio.dart';
import 'package:pushnoti_app/di.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: '/auth')
abstract class AuthApi {
  factory AuthApi({Dio? dio}) {
    return _AuthApi(dio ?? di.get<Dio>());
  }

  @POST('/firebase-sync')
  Future<void> firebaseSync();
}