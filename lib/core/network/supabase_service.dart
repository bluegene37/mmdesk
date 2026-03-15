import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'supabase_service.g.dart';

@riverpod
SupabaseClient supabaseClient(Ref ref) {
  return Supabase.instance.client;
}

class SupabaseService {
  static Future<void> initialize() async {
    await Supabase.initialize(
      url: const String.fromEnvironment('SUPABASE_URL', defaultValue: 'https://placeholder.supabase.co'),
      anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: 'placeholder_anon_key'),
    );
  }
}
