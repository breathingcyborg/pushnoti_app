// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_protected.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppProtected _$AppProtectedFromJson(Map<String, dynamic> json) {
  return _AppProtected.fromJson(json);
}

/// @nodoc
mixin _$AppProtected {
  String get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String get apiKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppProtectedCopyWith<AppProtected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppProtectedCopyWith<$Res> {
  factory $AppProtectedCopyWith(
          AppProtected value, $Res Function(AppProtected) then) =
      _$AppProtectedCopyWithImpl<$Res, AppProtected>;
  @useResult
  $Res call(
      {String id,
      String displayName,
      String createdAt,
      String updatedAt,
      String apiKey});
}

/// @nodoc
class _$AppProtectedCopyWithImpl<$Res, $Val extends AppProtected>
    implements $AppProtectedCopyWith<$Res> {
  _$AppProtectedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? apiKey = null,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppProtectedImplCopyWith<$Res>
    implements $AppProtectedCopyWith<$Res> {
  factory _$$AppProtectedImplCopyWith(
          _$AppProtectedImpl value, $Res Function(_$AppProtectedImpl) then) =
      __$$AppProtectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String displayName,
      String createdAt,
      String updatedAt,
      String apiKey});
}

/// @nodoc
class __$$AppProtectedImplCopyWithImpl<$Res>
    extends _$AppProtectedCopyWithImpl<$Res, _$AppProtectedImpl>
    implements _$$AppProtectedImplCopyWith<$Res> {
  __$$AppProtectedImplCopyWithImpl(
      _$AppProtectedImpl _value, $Res Function(_$AppProtectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? apiKey = null,
  }) {
    return _then(_$AppProtectedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppProtectedImpl implements _AppProtected {
  _$AppProtectedImpl(
      {required this.id,
      required this.displayName,
      required this.createdAt,
      required this.updatedAt,
      required this.apiKey});

  factory _$AppProtectedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppProtectedImplFromJson(json);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String apiKey;

  @override
  String toString() {
    return 'AppProtected(id: $id, displayName: $displayName, createdAt: $createdAt, updatedAt: $updatedAt, apiKey: $apiKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppProtectedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, displayName, createdAt, updatedAt, apiKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppProtectedImplCopyWith<_$AppProtectedImpl> get copyWith =>
      __$$AppProtectedImplCopyWithImpl<_$AppProtectedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppProtectedImplToJson(
      this,
    );
  }
}

abstract class _AppProtected implements AppProtected {
  factory _AppProtected(
      {required final String id,
      required final String displayName,
      required final String createdAt,
      required final String updatedAt,
      required final String apiKey}) = _$AppProtectedImpl;

  factory _AppProtected.fromJson(Map<String, dynamic> json) =
      _$AppProtectedImpl.fromJson;

  @override
  String get id;
  @override
  String get displayName;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String get apiKey;
  @override
  @JsonKey(ignore: true)
  _$$AppProtectedImplCopyWith<_$AppProtectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
