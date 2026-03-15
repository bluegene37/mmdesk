// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['id'] as String,
      role: $enumDecode(_$UserRoleEnumMap, json['role']),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'role': _$UserRoleEnumMap[instance.role]!,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$UserRoleEnumMap = {
  UserRole.admin: 'admin',
  UserRole.agent: 'agent',
  UserRole.lawyer: 'lawyer',
};
