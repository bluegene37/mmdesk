// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      isResponsible: json['is_responsible'] as bool? ?? false,
      primaryRegistrationNo: json['primary_registration_no'] as String?,
      primaryRegistrationType: json['primary_registration_type'] as String?,
      businessName: json['business_name'] as String?,
      officeName: json['office_name'] as String?,
      accessLevel: json['access_level'] as String? ?? 'full',
      isActive: json['is_active'] as bool? ?? true,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'is_responsible': instance.isResponsible,
      'primary_registration_no': instance.primaryRegistrationNo,
      'primary_registration_type': instance.primaryRegistrationType,
      'business_name': instance.businessName,
      'office_name': instance.officeName,
      'access_level': instance.accessLevel,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
