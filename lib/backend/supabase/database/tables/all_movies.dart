import '../database.dart';

class AllMoviesTable extends SupabaseTable<AllMoviesRow> {
  @override
  String get tableName => 'AllMovies';

  @override
  AllMoviesRow createRow(Map<String, dynamic> data) => AllMoviesRow(data);
}

class AllMoviesRow extends SupabaseDataRow {
  AllMoviesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AllMoviesTable();

  String? get link => getField<String>('link');
  set link(String? value) => setField<String>('link', value);

  String? get poster => getField<String>('poster');
  set poster(String? value) => setField<String>('poster', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  String? get movieUrl => getField<String>('movie_url');
  set movieUrl(String? value) => setField<String>('movie_url', value);

  String? get movieTrailer => getField<String>('movie_trailer');
  set movieTrailer(String? value) => setField<String>('movie_trailer', value);

  String? get cast => getField<String>('cast');
  set cast(String? value) => setField<String>('cast', value);

  int get uid => getField<int>('uid')!;
  set uid(int value) => setField<int>('uid', value);
}
