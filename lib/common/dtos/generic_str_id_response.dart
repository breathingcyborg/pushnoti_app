
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_str_id_response.freezed.dart';
part 'generic_str_id_response.g.dart';

@freezed
class GenericStrIdResponse with _$GenericStrIdResponse {
  factory GenericStrIdResponse({
    required String id,
  }) = _GenericStrIdResponse;
	
  factory GenericStrIdResponse.fromJson(Map<String, dynamic> json) =>
			_$GenericStrIdResponseFromJson(json);
}
