import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String id,
    @JsonKey(name: 'matter_id') String? matterId,
    @JsonKey(name: 'assigned_to') String? assignedTo,
    required String title,
    String? description,
    @JsonKey(name: 'task_type') @Default('general') String taskType,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @Default('pending') String status,
    @Default('medium') String priority,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
