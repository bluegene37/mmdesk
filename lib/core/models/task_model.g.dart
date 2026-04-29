// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: json['id'] as String,
      matterId: json['matter_id'] as String?,
      assignedTo: json['assigned_to'] as String?,
      title: json['title'] as String,
      description: json['description'] as String?,
      taskType: json['task_type'] as String? ?? 'general',
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      status: json['status'] as String? ?? 'pending',
      priority: json['priority'] as String? ?? 'medium',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matter_id': instance.matterId,
      'assigned_to': instance.assignedTo,
      'title': instance.title,
      'description': instance.description,
      'task_type': instance.taskType,
      'due_date': instance.dueDate?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'status': instance.status,
      'priority': instance.priority,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
