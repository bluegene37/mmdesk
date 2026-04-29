// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultationModel _$ConsultationModelFromJson(Map<String, dynamic> json) {
  return _ConsultationModel.fromJson(json);
}

/// @nodoc
mixin _$ConsultationModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'matter_id')
  String? get matterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  String? get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'staff_id')
  String? get staffId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_minutes')
  int? get durationMinutes => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  double get fee => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultationModelCopyWith<ConsultationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationModelCopyWith<$Res> {
  factory $ConsultationModelCopyWith(
          ConsultationModel value, $Res Function(ConsultationModel) then) =
      _$ConsultationModelCopyWithImpl<$Res, ConsultationModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'matter_id') String? matterId,
      @JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'staff_id') String? staffId,
      DateTime date,
      @JsonKey(name: 'duration_minutes') int? durationMinutes,
      String type,
      String? notes,
      double fee,
      String status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$ConsultationModelCopyWithImpl<$Res, $Val extends ConsultationModel>
    implements $ConsultationModelCopyWith<$Res> {
  _$ConsultationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matterId = freezed,
    Object? clientId = freezed,
    Object? staffId = freezed,
    Object? date = null,
    Object? durationMinutes = freezed,
    Object? type = null,
    Object? notes = freezed,
    Object? fee = null,
    Object? status = null,
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
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMinutes: freezed == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ConsultationModelImplCopyWith<$Res>
    implements $ConsultationModelCopyWith<$Res> {
  factory _$$ConsultationModelImplCopyWith(_$ConsultationModelImpl value,
          $Res Function(_$ConsultationModelImpl) then) =
      __$$ConsultationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'matter_id') String? matterId,
      @JsonKey(name: 'client_id') String? clientId,
      @JsonKey(name: 'staff_id') String? staffId,
      DateTime date,
      @JsonKey(name: 'duration_minutes') int? durationMinutes,
      String type,
      String? notes,
      double fee,
      String status,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$ConsultationModelImplCopyWithImpl<$Res>
    extends _$ConsultationModelCopyWithImpl<$Res, _$ConsultationModelImpl>
    implements _$$ConsultationModelImplCopyWith<$Res> {
  __$$ConsultationModelImplCopyWithImpl(_$ConsultationModelImpl _value,
      $Res Function(_$ConsultationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matterId = freezed,
    Object? clientId = freezed,
    Object? staffId = freezed,
    Object? date = null,
    Object? durationMinutes = freezed,
    Object? type = null,
    Object? notes = freezed,
    Object? fee = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ConsultationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      matterId: freezed == matterId
          ? _value.matterId
          : matterId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      staffId: freezed == staffId
          ? _value.staffId
          : staffId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMinutes: freezed == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ConsultationModelImpl implements _ConsultationModel {
  const _$ConsultationModelImpl(
      {required this.id,
      @JsonKey(name: 'matter_id') this.matterId,
      @JsonKey(name: 'client_id') this.clientId,
      @JsonKey(name: 'staff_id') this.staffId,
      required this.date,
      @JsonKey(name: 'duration_minutes') this.durationMinutes,
      this.type = 'initial',
      this.notes,
      this.fee = 0,
      this.status = 'scheduled',
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$ConsultationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultationModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'matter_id')
  final String? matterId;
  @override
  @JsonKey(name: 'client_id')
  final String? clientId;
  @override
  @JsonKey(name: 'staff_id')
  final String? staffId;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'duration_minutes')
  final int? durationMinutes;
  @override
  @JsonKey()
  final String type;
  @override
  final String? notes;
  @override
  @JsonKey()
  final double fee;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ConsultationModel(id: $id, matterId: $matterId, clientId: $clientId, staffId: $staffId, date: $date, durationMinutes: $durationMinutes, type: $type, notes: $notes, fee: $fee, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matterId, matterId) ||
                other.matterId == matterId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.staffId, staffId) || other.staffId == staffId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, matterId, clientId, staffId,
      date, durationMinutes, type, notes, fee, status, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationModelImplCopyWith<_$ConsultationModelImpl> get copyWith =>
      __$$ConsultationModelImplCopyWithImpl<_$ConsultationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationModelImplToJson(
      this,
    );
  }
}

abstract class _ConsultationModel implements ConsultationModel {
  const factory _ConsultationModel(
          {required final String id,
          @JsonKey(name: 'matter_id') final String? matterId,
          @JsonKey(name: 'client_id') final String? clientId,
          @JsonKey(name: 'staff_id') final String? staffId,
          required final DateTime date,
          @JsonKey(name: 'duration_minutes') final int? durationMinutes,
          final String type,
          final String? notes,
          final double fee,
          final String status,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$ConsultationModelImpl;

  factory _ConsultationModel.fromJson(Map<String, dynamic> json) =
      _$ConsultationModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'matter_id')
  String? get matterId;
  @override
  @JsonKey(name: 'client_id')
  String? get clientId;
  @override
  @JsonKey(name: 'staff_id')
  String? get staffId;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'duration_minutes')
  int? get durationMinutes;
  @override
  String get type;
  @override
  String? get notes;
  @override
  double get fee;
  @override
  String get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ConsultationModelImplCopyWith<_$ConsultationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
