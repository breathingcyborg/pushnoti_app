import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pushnoti_app/auth/services/firebase_auth_service.dart';
import 'package:pushnoti_app/di.dart';

Dio createDio() {
  String baseUrl = dotenv.get('API_BASE_URL');

  var dio = Dio(BaseOptions(
    baseUrl: baseUrl,
  ));

  // attach access token
  var attachAccessTokenInterceptor = InterceptorsWrapper(onRequest:
      (RequestOptions options, RequestInterceptorHandler handler) async {

    var token = await di.get<FirebaseAuthService>().getIdToken();

    if (token != null) {
      options.headers['Authorization'] = "Bearer $token";
    }
    return handler.next(options);
  });

  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor()); 
  }

  // // transform error
  // var errorInterceptor = InterceptorsWrapper(
  //   onError: (DioException error, ErrorInterceptorHandler handler) {
  //     return handler.reject(createApiException(error));
  //   }
  // );

  dio.interceptors.add(attachAccessTokenInterceptor);
  // dio.interceptors.add(errorInterceptor);

  return dio;
}
