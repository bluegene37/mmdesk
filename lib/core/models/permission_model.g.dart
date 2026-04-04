// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PermissionEntryImpl _$$PermissionEntryImplFromJson(
        Map<String, dynamic> json) =>
    _$PermissionEntryImpl(
      id: json['id'] as String,
      group: json['group'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      isGranted: json['isGranted'] as bool? ?? false,
    );

Map<String, dynamic> _$$PermissionEntryImplToJson(
        _$PermissionEntryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group': instance.group,
      'name': instance.name,
      'description': instance.description,
      'isGranted': instance.isGranted,
    };
