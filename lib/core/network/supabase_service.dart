import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'supabase_service.g.dart';

@riverpod
SupabaseClient supabaseClient(Ref ref) {
  return Supabase.instance.client;
}

class SupabaseService {
  static const _supabaseUrl = 'https://vbzvzvzpygrskwsfbyei.supabase.co';
  static const _supabaseAnonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZienZ6dnpweWdyc2t3c2ZieWVpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQ3Njc4NDMsImV4cCI6MjA5MDM0Mzg0M30.iJqL8WZWxqrQ7Wg8spxGRRtNO2_Y1F2gvZfGh4lIRSY';

  static Future<void> initialize() async {
    await Supabase.initialize(
      url: _supabaseUrl,
      anonKey: _supabaseAnonKey,
    );
  }
}
