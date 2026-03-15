// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DependentModelImpl _$$DependentModelImplFromJson(Map<String, dynamic> json) =>
    _$DependentModelImpl(
      id: json['id'] as String,
      clientId: json['client_id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      relationship: json['relationship'] as String,
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$DependentModelImplToJson(
        _$DependentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_id': instance.clientId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'relationship': instance.relationship,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
