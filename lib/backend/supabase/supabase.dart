import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://dlzvlemdugyxxmdjtgdg.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRsenZsZW1kdWd5eHhtZGp0Z2RnIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzc1MTY1MTMsImV4cCI6MTk5MzA5MjUxM30.NPJmQnR1rFQEVVLsmwBieD_i265ncjuHRvNKuQVJIAg';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
