// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) {
  return _ClientModel.fromJson(json);
}

/// @nodoc
mixin _$ClientModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_agent_id')
  String get primaryAgentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: 'passport_number')
  String? get passportNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientModelCopyWith<ClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientModelCopyWith<$Res> {
  factory $ClientModelCopyWith(
          ClientModel value, $Res Function(ClientModel) then) =
      _$ClientModelCopyWithImpl<$Res, ClientModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'primary_agent_id') String primaryAgentId,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? email,
      String? phone,
      @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
      String? nationality,
      @JsonKey(name: 'passport_number') String? passportNumber,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$ClientModelCopyWithImpl<$Res, $Val extends ClientModel>
    implements $ClientModelCopyWith<$Res> {
  _$ClientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? primaryAgentId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? passportNumber = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      primaryAgentId: null == primaryAgentId
          ? _value.primaryAgentId
          : primaryAgentId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNumber: freezed == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ClientModelImplCopyWith<$Res>
    implements $ClientModelCopyWith<$Res> {
  factory _$$ClientModelImplCopyWith(
          _$ClientModelImpl value, $Res Function(_$ClientModelImpl) then) =
      __$$ClientModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'primary_agent_id') String primaryAgentId,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? email,
      String? phone,
      @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
      String? nationality,
      @JsonKey(name: 'passport_number') String? passportNumber,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$ClientModelImplCopyWithImpl<$Res>
    extends _$ClientModelCopyWithImpl<$Res, _$ClientModelImpl>
    implements _$$ClientModelImplCopyWith<$Res> {
  __$$ClientModelImplCopyWithImpl(
      _$ClientModelImpl _value, $Res Function(_$ClientModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? primaryAgentId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = freezed,
    Object? phone = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
    Object? passportNumber = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ClientModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      primaryAgentId: null == primaryAgentId
          ? _value.primaryAgentId
          : primaryAgentId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNumber: freezed == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ClientModelImpl implements _ClientModel {
  const _$ClientModelImpl(
      {required this.id,
      @JsonKey(name: 'primary_agent_id') required this.primaryAgentId,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      this.email,
      this.phone,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      this.nationality,
      @JsonKey(name: 'passport_number') this.passportNumber,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$ClientModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'primary_agent_id')
  final String primaryAgentId;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'date_of_birth')
  final DateTime? dateOfBirth;
  @override
  final String? nationality;
  @override
  @JsonKey(name: 'passport_number')
  final String? passportNumber;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ClientModel(id: $id, primaryAgentId: $primaryAgentId, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, dateOfBirth: $dateOfBirth, nationality: $nationality, passportNumber: $passportNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.primaryAgentId, primaryAgentId) ||
                other.primaryAgentId == primaryAgentId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      primaryAgentId,
      firstName,
      lastName,
      email,
      phone,
      dateOfBirth,
      nationality,
      passportNumber,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientModelImplCopyWith<_$ClientModelImpl> get copyWith =>
      __$$ClientModelImplCopyWithImpl<_$ClientModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientModelImplToJson(
      this,
    );
  }
}

abstract class _ClientModel implements ClientModel {
  const factory _ClientModel(
      {required final String id,
      @JsonKey(name: 'primary_agent_id') required final String primaryAgentId,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      final String? email,
      final String? phone,
      @JsonKey(name: 'date_of_birth') final DateTime? dateOfBirth,
      final String? nationality,
      @JsonKey(name: 'passport_number') final String? passportNumber,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
      required final DateTime updatedAt}) = _$ClientModelImpl;

  factory _ClientModel.fromJson(Map<String, dynamic> json) =
      _$ClientModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'primary_agent_id')
  String get primaryAgentId;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'date_of_birth')
  DateTime? get dateOfBirth;
  @override
  String? get nationality;
  @override
  @JsonKey(name: 'passport_number')
  String? get passportNumber;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ClientModelImplCopyWith<_$ClientModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
