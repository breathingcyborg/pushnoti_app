
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_id_response.freezed.dart';
part 'generic_id_response.g.dart';

@freezed
class GenericIdResponse with _$GenericIdResponse {
  factory GenericIdResponse({
    required int id
  }) = _GenericIdResponse;
	
  factory GenericIdResponse.fromJson(Map<String, dynamic> json) =>
			_$GenericIdResponseFromJson(json);
}
