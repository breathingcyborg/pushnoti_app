// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

App _$AppFromJson(Map<String, dynamic> json) {
  return _App.fromJson(json);
}

/// @nodoc
mixin _$App {
  String get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppCopyWith<App> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCopyWith<$Res> {
  factory $AppCopyWith(App value, $Res Function(App) then) =
      _$AppCopyWithImpl<$Res, App>;
  @useResult
  $Res call({String id, String displayName});
}

/// @nodoc
class _$AppCopyWithImpl<$Res, $Val extends App> implements $AppCopyWith<$Res> {
  _$AppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppImplCopyWith<$Res> implements $AppCopyWith<$Res> {
  factory _$$AppImplCopyWith(_$AppImpl value, $Res Function(_$AppImpl) then) =
      __$$AppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String displayName});
}

/// @nodoc
class __$$AppImplCopyWithImpl<$Res> extends _$AppCopyWithImpl<$Res, _$AppImpl>
    implements _$$AppImplCopyWith<$Res> {
  __$$AppImplCopyWithImpl(_$AppImpl _value, $Res Function(_$AppImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
  }) {
    return _then(_$AppImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppImpl implements _App {
  _$AppImpl({required this.id, required this.displayName});

  factory _$AppImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppImplFromJson(json);

  @override
  final String id;
  @override
  final String displayName;

  @override
  String toString() {
    return 'App(id: $id, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppImplCopyWith<_$AppImpl> get copyWith =>
      __$$AppImplCopyWithImpl<_$AppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppImplToJson(
      this,
    );
  }
}

abstract class _App implements App {
  factory _App({required final String id, required final String displayName}) =
      _$AppImpl;

  factory _App.fromJson(Map<String, dynamic> json) = _$AppImpl.fromJson;

  @override
  String get id;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$$AppImplCopyWith<_$AppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
