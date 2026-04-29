import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/task_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'tasks_repository.g.dart';

class TasksRepository {
  final Ref ref;
  TasksRepository(this.ref);

  Future<List<TaskModel>> getTasks({
    String? matterId,
    String? assignedTo,
    String? taskType,
    String? status,
  }) async {
    final supabase = ref.read(supabaseClientProvider);
    var query = supabase.from('tasks').select();
    if (matterId != null) query = query.eq('matter_id', matterId);
    if (assignedTo != null) query = query.eq('assigned_to', assignedTo);
    if (taskType != null) query = query.eq('task_type', taskType);
    if (status != null) query = query.eq('status', status);
    final response = await query.order('created_at', ascending: false);
    return response.map((json) => TaskModel.fromJson(json)).toList();
  }

  Future<TaskModel> createTask(TaskModel task) async {
    final supabase = ref.read(supabaseClientProvider);
    final response = await supabase
        .from('tasks')
        .insert(task.toJson())
        .select()
        .single();
    return TaskModel.fromJson(response);
  }

  Future<void> updateTask(TaskModel task) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('tasks').update(task.toJson()).eq('id', task.id);
  }

  Future<void> completeTask(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('tasks').update({
      'status': 'completed',
      'completed_at': DateTime.now().toIso8601String(),
      'updated_at': DateTime.now().toIso8601String(),
    }).eq('id', id);
  }

  Future<void> deleteTask(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    await supabase.from('tasks').delete().eq('id', id);
  }
}

@riverpod
TasksRepository tasksRepository(Ref ref) {
  return TasksRepository(ref);
}

@riverpod
Future<List<TaskModel>> tasksList(Ref ref) {
  return ref.read(tasksRepositoryProvider).getTasks();
}
