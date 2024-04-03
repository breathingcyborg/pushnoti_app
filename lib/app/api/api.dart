import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pushnoti_app/app/models/app_protected.dart';
import 'package:pushnoti_app/common/dtos/generic_str_id_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:pushnoti_app/di.dart';
import 'package:dio/dio.dart';

part 'api.g.dart';
part 'api.freezed.dart';

@RestApi()
abstract class AppsApi {
  factory AppsApi({ Dio? dio }) {
    return _AppsApi(dio ?? di.get<Dio>());
  }

  @POST('/apps')
  Future<GenericStrIdResponse> createApp(@Body() CreateAppDTO dto);

  @GET('/apps')
  Future<List<AppProtected>> index();

  @GET('/apps/{id}')
  Future<AppProtected?> findById(@Path('id') String id);

  @PATCH('/apps/{id}')
  Future<void> editApp(@Path('id') String id, @Body() EditAppDTO dto);
}

@freezed
sealed class CreateAppDTO with _$CreateAppDTO {
  const factory CreateAppDTO({
    required String displayName,
  }) = _CreateAppDto;


  factory CreateAppDTO.fromJson(Map<String, Object?> json)
      => _$CreateAppDTOFromJson(json);
}

@freezed
sealed class EditAppDTO with _$EditAppDTO {
  const factory EditAppDTO({
    required String displayName,
  }) = _EditAppDto;


  factory EditAppDTO.fromJson(Map<String, Object?> json)
      => _$EditAppDTOFromJson(json);
}