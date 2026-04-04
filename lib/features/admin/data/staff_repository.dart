import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/staff_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'staff_repository.g.dart';

class StaffRepository {
  final Ref ref;
  StaffRepository(this.ref);

  static final List<StaffModel> _mockStaff = [
    StaffModel(
      id: 'staff-1',
      firstName: 'John',
      lastName: 'Smith',
      email: 'john@example.com',
      phone: '0412 345 678',
      role: StaffRole.agent,
      office: 'Main',
      isActive: true,
      createdAt: DateTime.now().subtract(const Duration(days: 90)),
      updatedAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    StaffModel(
      id: 'staff-2',
      firstName: 'Maria',
      lastName: 'Garcia',
      email: 'maria@example.com',
      phone: '0423 456 789',
      role: StaffRole.manager,
      office: 'Main',
      isActive: true,
      createdAt: DateTime.now().subtract(const Duration(days: 80)),
      updatedAt: DateTime.now().subtract(const Duration(days: 5)),
    ),
  ];

  Future<List<StaffModel>> getStaff() async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      final response = await supabase
          .from('staff')
          .select()
          .order('created_at', ascending: false);
      return response.map((json) => StaffModel.fromJson(json)).toList();
    } catch (e) {
      return _mockStaff;
    }
  }

  Future<void> createStaff(StaffModel staff) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('staff').insert(staff.toJson());
    } catch (e) {
      _mockStaff.insert(0, staff);
    }
  }

  Future<void> updateStaff(StaffModel staff) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('staff').update(staff.toJson()).eq('id', staff.id);
    } catch (e) {
      final index = _mockStaff.indexWhere((s) => s.id == staff.id);
      if (index != -1) _mockStaff[index] = staff;
    }
  }

  Future<void> deleteStaff(String id) async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      await supabase.from('staff').delete().eq('id', id);
    } catch (e) {
      _mockStaff.removeWhere((s) => s.id == id);
    }
  }
}

@riverpod
StaffRepository staffRepository(Ref ref) {
  return StaffRepository(ref);
}

@riverpod
Future<List<StaffModel>> staffList(Ref ref) {
  return ref.read(staffRepositoryProvider).getStaff();
}
