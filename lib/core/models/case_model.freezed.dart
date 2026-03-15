// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaseModel _$CaseModelFromJson(Map<String, dynamic> json) {
  return _CaseModel.fromJson(json);
}

/// @nodoc
mixin _$CaseModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'agent_id')
  String get agentId => throw _privateConstructorUsedError;
  CaseType get type => throw _privateConstructorUsedError;
  CaseStatus get status => throw _privateConstructorUsedError;
  PriorityLevel get priority => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiry_date')
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseModelCopyWith<CaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseModelCopyWith<$Res> {
  factory $CaseModelCopyWith(CaseModel value, $Res Function(CaseModel) then) =
      _$CaseModelCopyWithImpl<$Res, CaseModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'agent_id') String agentId,
      CaseType type,
      CaseStatus status,
      PriorityLevel priority,
      String? description,
      @JsonKey(name: 'expiry_date') DateTime? expiryDate,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$CaseModelCopyWithImpl<$Res, $Val extends CaseModel>
    implements $CaseModelCopyWith<$Res> {
  _$CaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = null,
    Object? agentId = null,
    Object? type = null,
    Object? status = null,
    Object? priority = null,
    Object? description = freezed,
    Object? expiryDate = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CaseType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CaseStatus,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as PriorityLevel,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaseModelImplCopyWith<$Res>
    implements $CaseModelCopyWith<$Res> {
  factory _$$CaseModelImplCopyWith(
          _$CaseModelImpl value, $Res Function(_$CaseModelImpl) then) =
      __$$CaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'agent_id') String agentId,
      CaseType type,
      CaseStatus status,
      PriorityLevel priority,
      String? description,
      @JsonKey(name: 'expiry_date') DateTime? expiryDate,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$CaseModelImplCopyWithImpl<$Res>
    extends _$CaseModelCopyWithImpl<$Res, _$CaseModelImpl>
    implements _$$CaseModelImplCopyWith<$Res> {
  __$$CaseModelImplCopyWithImpl(
      _$CaseModelImpl _value, $Res Function(_$CaseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = null,
    Object? agentId = null,
    Object? type = null,
    Object? status = null,
    Object? priority = null,
    Object? description = freezed,
    Object? expiryDate = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CaseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      agentId: null == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CaseType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CaseStatus,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as PriorityLevel,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseModelImpl implements _CaseModel {
  const _$CaseModelImpl(
      {required this.id,
      @JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'agent_id') required this.agentId,
      required this.type,
      required this.status,
      required this.priority,
      this.description,
      @JsonKey(name: 'expiry_date') this.expiryDate,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$CaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'client_id')
  final String clientId;
  @override
  @JsonKey(name: 'agent_id')
  final String agentId;
  @override
  final CaseType type;
  @override
  final CaseStatus status;
  @override
  final PriorityLevel priority;
  @override
  final String? description;
  @override
  @JsonKey(name: 'expiry_date')
  final DateTime? expiryDate;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'CaseModel(id: $id, clientId: $clientId, agentId: $agentId, type: $type, status: $status, priority: $priority, description: $description, expiryDate: $expiryDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, clientId, agentId, type,
      status, priority, description, expiryDate, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseModelImplCopyWith<_$CaseModelImpl> get copyWith =>
      __$$CaseModelImplCopyWithImpl<_$CaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseModelImplToJson(
      this,
    );
  }
}

abstract class _CaseModel implements CaseModel {
  const factory _CaseModel(
          {required final String id,
          @JsonKey(name: 'client_id') required final String clientId,
          @JsonKey(name: 'agent_id') required final String agentId,
          required final CaseType type,
          required final CaseStatus status,
          required final PriorityLevel priority,
          final String? description,
          @JsonKey(name: 'expiry_date') final DateTime? expiryDate,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$CaseModelImpl;

  factory _CaseModel.fromJson(Map<String, dynamic> json) =
      _$CaseModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'client_id')
  String get clientId;
  @override
  @JsonKey(name: 'agent_id')
  String get agentId;
  @override
  CaseType get type;
  @override
  CaseStatus get status;
  @override
  PriorityLevel get priority;
  @override
  String? get description;
  @override
  @JsonKey(name: 'expiry_date')
  DateTime? get expiryDate;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CaseModelImplCopyWith<_$CaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
