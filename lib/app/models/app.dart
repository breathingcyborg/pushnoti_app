
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app.freezed.dart';
part 'app.g.dart';

@freezed
class App with _$App {
  factory App({
    required String id,
    required String displayName,
  }) = _App;
	
  factory App.fromJson(Map<String, dynamic> json) =>
			_$AppFromJson(json);
}
