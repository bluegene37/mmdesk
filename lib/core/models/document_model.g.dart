// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentModelImpl _$$DocumentModelImplFromJson(Map<String, dynamic> json) =>
    _$DocumentModelImpl(
      id: json['id'] as String,
      caseId: json['case_id'] as String?,
      clientId: json['client_id'] as String?,
      uploadedBy: json['uploaded_by'] as String,
      fileName: json['file_name'] as String,
      filePath: json['file_path'] as String,
      contentType: json['content_type'] as String?,
      fileSizeBytes: (json['file_size_bytes'] as num?)?.toInt(),
      isSensitive: json['is_sensitive'] as bool? ?? true,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$DocumentModelImplToJson(_$DocumentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'case_id': instance.caseId,
      'client_id': instance.clientId,
      'uploaded_by': instance.uploadedBy,
      'file_name': instance.fileName,
      'file_path': instance.filePath,
      'content_type': instance.contentType,
      'file_size_bytes': instance.fileSizeBytes,
      'is_sensitive': instance.isSensitive,
      'created_at': instance.createdAt.toIso8601String(),
    };
