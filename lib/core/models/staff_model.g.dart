// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffModelImpl _$$StaffModelImplFromJson(Map<String, dynamic> json) =>
    _$StaffModelImpl(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      role: $enumDecodeNullable(_$StaffRoleEnumMap, json['role']) ??
          StaffRole.agent,
      office: json['office'] as String?,
      userId: json['user_id'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$StaffModelImplToJson(_$StaffModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'role': _$StaffRoleEnumMap[instance.role]!,
      'office': instance.office,
      'user_id': instance.userId,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$StaffRoleEnumMap = {
  StaffRole.agent: 'agent',
  StaffRole.clerk: 'clerk',
  StaffRole.manager: 'manager',
  StaffRole.admin: 'admin',
  StaffRole.other: 'other',
};
