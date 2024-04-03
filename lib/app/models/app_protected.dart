
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_protected.freezed.dart';
part 'app_protected.g.dart';

@freezed
class AppProtected with _$AppProtected {
  factory AppProtected({
    required String id,
    required String displayName,
    required String createdAt,
    required String updatedAt,
    required String apiKey,
  }) = _AppProtected;
	
  factory AppProtected.fromJson(Map<String, dynamic> json) =>
			_$AppProtectedFromJson(json);
}
