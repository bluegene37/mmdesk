// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientModelImpl _$$ClientModelImplFromJson(Map<String, dynamic> json) =>
    _$ClientModelImpl(
      id: json['id'] as String,
      primaryAgentId: json['primary_agent_id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      nationality: json['nationality'] as String?,
      passportNumber: json['passport_number'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ClientModelImplToJson(_$ClientModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'primary_agent_id': instance.primaryAgentId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'nationality': instance.nationality,
      'passport_number': instance.passportNumber,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
