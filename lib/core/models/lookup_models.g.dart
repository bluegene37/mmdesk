// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lookup_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LookupItemImpl _$$LookupItemImplFromJson(Map<String, dynamic> json) =>
    _$LookupItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$LookupItemImplToJson(_$LookupItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$StatusItemImpl _$$StatusItemImplFromJson(Map<String, dynamic> json) =>
    _$StatusItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      color: json['color'] as String?,
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$StatusItemImplToJson(_$StatusItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$VisaTypeItemImpl _$$VisaTypeItemImplFromJson(Map<String, dynamic> json) =>
    _$VisaTypeItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      subclass: json['subclass'] as String?,
      description: json['description'] as String?,
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$VisaTypeItemImplToJson(_$VisaTypeItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subclass': instance.subclass,
      'description': instance.description,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$CodeItemImpl _$$CodeItemImplFromJson(Map<String, dynamic> json) =>
    _$CodeItemImpl(
      id: json['id'] as String,
      code: json['code'] as String,
      description: json['description'] as String?,
      rate: (json['rate'] as num?)?.toDouble() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CodeItemImplToJson(_$CodeItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'rate': instance.rate,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$MergeFieldItemImpl _$$MergeFieldItemImplFromJson(Map<String, dynamic> json) =>
    _$MergeFieldItemImpl(
      id: json['id'] as String,
      fieldName: json['field_name'] as String,
      fieldKey: json['field_key'] as String,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$MergeFieldItemImplToJson(
        _$MergeFieldItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'field_name': instance.fieldName,
      'field_key': instance.fieldKey,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$QuickpartItemImpl _$$QuickpartItemImplFromJson(Map<String, dynamic> json) =>
    _$QuickpartItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      content: json['content'] as String,
      category: json['category'] as String?,
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$QuickpartItemImplToJson(_$QuickpartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'content': instance.content,
      'category': instance.category,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$DirectoryItemImpl _$$DirectoryItemImplFromJson(Map<String, dynamic> json) =>
    _$DirectoryItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      path: json['path'] as String?,
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$DirectoryItemImplToJson(_$DirectoryItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'path': instance.path,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$LegalBasisItemImpl _$$LegalBasisItemImplFromJson(Map<String, dynamic> json) =>
    _$LegalBasisItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      sortOrder: (json['sort_order'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$LegalBasisItemImplToJson(
        _$LegalBasisItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
