import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mmdesk/core/models/firm_preferences_model.dart';
import 'package:mmdesk/core/network/supabase_service.dart';

part 'preferences_repository.g.dart';

class PreferencesRepository {
  final Ref ref;
  PreferencesRepository(this.ref);

  static FirmPreferencesModel _mockPreferences = const FirmPreferencesModel();

  Future<FirmPreferencesModel> getPreferences() async {
    final supabase = ref.read(supabaseClientProvider);
    try {
      final response = await supabase
          .from('firm_preferences')
          .select()
          .eq('id', 'default')
          .maybeSingle();
      if (response != null) {
        return FirmPreferencesModel.fromJson(response);
      }
      return _mockPreferences;
    } catch (e) {
      return _mockPreferences;
    }
  }

  Future<void> savePreferences(FirmPreferencesModel prefs) async {
    final supabase = ref.read(supabaseClientProvider);
    final data = prefs.copyWith(updatedAt: DateTime.now()).toJson();
    try {
      await supabase.from('firm_preferences').upsert(data);
    } catch (e) {
      _mockPreferences = prefs;
    }
  }
}

@riverpod
PreferencesRepository preferencesRepository(Ref ref) {
  return PreferencesRepository(ref);
}

@riverpod
Future<FirmPreferencesModel> firmPreferences(Ref ref) {
  return ref.read(preferencesRepositoryProvider).getPreferences();
}
