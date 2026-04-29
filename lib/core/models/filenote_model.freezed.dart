// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filenote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilenoteModel _$FilenoteModelFromJson(Map<String, dynamic> json) {
  return _FilenoteModel.fromJson(json);
}

/// @nodoc
mixin _$FilenoteModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'matter_id')
  String? get matterId => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'fee_earner_id')
  String? get feeEarnerId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilenoteModelCopyWith<FilenoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilenoteModelCopyWith<$Res> {
  factory $FilenoteModelCopyWith(
          FilenoteModel value, $Res Function(FilenoteModel) then) =
      _$FilenoteModelCopyWithImpl<$Res, FilenoteModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'matter_id') String? matterId,
      String subject,
      String? action,
      @JsonKey(name: 'fee_earner_id') String? feeEarnerId,
      String? content,
      DateTime? date,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$FilenoteModelCopyWithImpl<$Res, $Val extends FilenoteModel>
    implements $FilenoteModelCopyWith<$Res> {
  _$FilenoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matterId = freezed,
    Object? subject = null,
    Object? action = freezed,
    Object? feeEarnerId = freezed,
    Object? content = freezed,
    Object? date = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matterId: freezed == matterId
          ? _value.matterId
          : matterId // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      feeEarnerId: freezed == feeEarnerId
          ? _value.feeEarnerId
          : feeEarnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilenoteModelImplCopyWith<$Res>
    implements $FilenoteModelCopyWith<$Res> {
  factory _$$FilenoteModelImplCopyWith(
          _$FilenoteModelImpl value, $Res Function(_$FilenoteModelImpl) then) =
      __$$FilenoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'matter_id') String? matterId,
      String subject,
      String? action,
      @JsonKey(name: 'fee_earner_id') String? feeEarnerId,
      String? content,
      DateTime? date,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$FilenoteModelImplCopyWithImpl<$Res>
    extends _$FilenoteModelCopyWithImpl<$Res, _$FilenoteModelImpl>
    implements _$$FilenoteModelImplCopyWith<$Res> {
  __$$FilenoteModelImplCopyWithImpl(
      _$FilenoteModelImpl _value, $Res Function(_$FilenoteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matterId = freezed,
    Object? subject = null,
    Object? action = freezed,
    Object? feeEarnerId = freezed,
    Object? content = freezed,
    Object? date = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$FilenoteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matterId: freezed == matterId
          ? _value.matterId
          : matterId // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      feeEarnerId: freezed == feeEarnerId
          ? _value.feeEarnerId
          : feeEarnerId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilenoteModelImpl implements _FilenoteModel {
  const _$FilenoteModelImpl(
      {required this.id,
      @JsonKey(name: 'matter_id') this.matterId,
      required this.subject,
      this.action,
      @JsonKey(name: 'fee_earner_id') this.feeEarnerId,
      this.content,
      this.date,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$FilenoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilenoteModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'matter_id')
  final String? matterId;
  @override
  final String subject;
  @override
  final String? action;
  @override
  @JsonKey(name: 'fee_earner_id')
  final String? feeEarnerId;
  @override
  final String? content;
  @override
  final DateTime? date;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'FilenoteModel(id: $id, matterId: $matterId, subject: $subject, action: $action, feeEarnerId: $feeEarnerId, content: $content, date: $date, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilenoteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matterId, matterId) ||
                other.matterId == matterId) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.feeEarnerId, feeEarnerId) ||
                other.feeEarnerId == feeEarnerId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, matterId, subject, action,
      feeEarnerId, content, date, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilenoteModelImplCopyWith<_$FilenoteModelImpl> get copyWith =>
      __$$FilenoteModelImplCopyWithImpl<_$FilenoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilenoteModelImplToJson(
      this,
    );
  }
}

abstract class _FilenoteModel implements FilenoteModel {
  const factory _FilenoteModel(
          {required final String id,
          @JsonKey(name: 'matter_id') final String? matterId,
          required final String subject,
          final String? action,
          @JsonKey(name: 'fee_earner_id') final String? feeEarnerId,
          final String? content,
          final DateTime? date,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$FilenoteModelImpl;

  factory _FilenoteModel.fromJson(Map<String, dynamic> json) =
      _$FilenoteModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'matter_id')
  String? get matterId;
  @override
  String get subject;
  @override
  String? get action;
  @override
  @JsonKey(name: 'fee_earner_id')
  String? get feeEarnerId;
  @override
  String? get content;
  @override
  DateTime? get date;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FilenoteModelImplCopyWith<_$FilenoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
