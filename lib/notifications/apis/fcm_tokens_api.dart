import 'package:dio/dio.dart';
import 'package:pushnoti_app/di.dart';
import 'package:retrofit/retrofit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_tokens_api.g.dart';
part 'fcm_tokens_api.freezed.dart';

@RestApi()
abstract class FCMTokensApi {
  factory FCMTokensApi({Dio? dio}) {
    return _FCMTokensApi(dio ?? di.get<Dio>());
  }

  @POST('/fcm-tokens')
  Future<void> update(@Body() UpdateFCMTokenRequest request);
}

@freezed
sealed class UpdateFCMTokenRequest with _$UpdateFCMTokenRequest {
  const factory UpdateFCMTokenRequest({
    required String token,
  }) = _UpdateFCMTokenRequest;


  factory UpdateFCMTokenRequest.fromJson(Map<String, Object?> json)
      => _$UpdateFCMTokenRequestFromJson(json);
}