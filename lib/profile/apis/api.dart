import 'package:dio/dio.dart';
import 'package:pushnoti_app/di.dart';
import 'package:retrofit/retrofit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api.g.dart';
part 'api.freezed.dart';

@RestApi(baseUrl: '/profile')
abstract class ProfileApi {
  factory ProfileApi({Dio? dio}) {
    return _ProfileApi(dio ?? di.get<Dio>());
  }

  @PATCH('/notimail')
  Future<void> setNotimail(@Body() SetNotimailRequest request);
}

@freezed
sealed class SetNotimailRequest with _$SetNotimailRequest {
  const factory SetNotimailRequest({
    required String notimail,
  }) = _SetNotimailRequest;


  factory SetNotimailRequest.fromJson(Map<String, Object?> json)
      => _$SetNotimailRequestFromJson(json);
}