// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetNotimailRequest _$SetNotimailRequestFromJson(Map<String, dynamic> json) {
  return _SetNotimailRequest.fromJson(json);
}

/// @nodoc
mixin _$SetNotimailRequest {
  String get notimail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetNotimailRequestCopyWith<SetNotimailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetNotimailRequestCopyWith<$Res> {
  factory $SetNotimailRequestCopyWith(
          SetNotimailRequest value, $Res Function(SetNotimailRequest) then) =
      _$SetNotimailRequestCopyWithImpl<$Res, SetNotimailRequest>;
  @useResult
  $Res call({String notimail});
}

/// @nodoc
class _$SetNotimailRequestCopyWithImpl<$Res, $Val extends SetNotimailRequest>
    implements $SetNotimailRequestCopyWith<$Res> {
  _$SetNotimailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notimail = null,
  }) {
    return _then(_value.copyWith(
      notimail: null == notimail
          ? _value.notimail
          : notimail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetNotimailRequestImplCopyWith<$Res>
    implements $SetNotimailRequestCopyWith<$Res> {
  factory _$$SetNotimailRequestImplCopyWith(_$SetNotimailRequestImpl value,
          $Res Function(_$SetNotimailRequestImpl) then) =
      __$$SetNotimailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String notimail});
}

/// @nodoc
class __$$SetNotimailRequestImplCopyWithImpl<$Res>
    extends _$SetNotimailRequestCopyWithImpl<$Res, _$SetNotimailRequestImpl>
    implements _$$SetNotimailRequestImplCopyWith<$Res> {
  __$$SetNotimailRequestImplCopyWithImpl(_$SetNotimailRequestImpl _value,
      $Res Function(_$SetNotimailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notimail = null,
  }) {
    return _then(_$SetNotimailRequestImpl(
      notimail: null == notimail
          ? _value.notimail
          : notimail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetNotimailRequestImpl implements _SetNotimailRequest {
  const _$SetNotimailRequestImpl({required this.notimail});

  factory _$SetNotimailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetNotimailRequestImplFromJson(json);

  @override
  final String notimail;

  @override
  String toString() {
    return 'SetNotimailRequest(notimail: $notimail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNotimailRequestImpl &&
            (identical(other.notimail, notimail) ||
                other.notimail == notimail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notimail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNotimailRequestImplCopyWith<_$SetNotimailRequestImpl> get copyWith =>
      __$$SetNotimailRequestImplCopyWithImpl<_$SetNotimailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetNotimailRequestImplToJson(
      this,
    );
  }
}

abstract class _SetNotimailRequest implements SetNotimailRequest {
  const factory _SetNotimailRequest({required final String notimail}) =
      _$SetNotimailRequestImpl;

  factory _SetNotimailRequest.fromJson(Map<String, dynamic> json) =
      _$SetNotimailRequestImpl.fromJson;

  @override
  String get notimail;
  @override
  @JsonKey(ignore: true)
  _$$SetNotimailRequestImplCopyWith<_$SetNotimailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
