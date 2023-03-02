import '../database.dart';

class TmdbmovieTable extends SupabaseTable<TmdbmovieRow> {
  @override
  String get tableName => 'tmdbmovie';

  @override
  TmdbmovieRow createRow(Map<String, dynamic> data) => TmdbmovieRow(data);
}

class TmdbmovieRow extends SupabaseDataRow {
  TmdbmovieRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TmdbmovieTable();

  String? get backdropPath => getField<String>('backdrop_path');
  set backdropPath(String? value) => setField<String>('backdrop_path', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get originalLanguage => getField<String>('original_language');
  set originalLanguage(String? value) =>
      setField<String>('original_language', value);

  String? get originalTitle => getField<String>('original_title');
  set originalTitle(String? value) => setField<String>('original_title', value);

  String? get overview => getField<String>('overview');
  set overview(String? value) => setField<String>('overview', value);

  String? get posterPath => getField<String>('poster_path');
  set posterPath(String? value) => setField<String>('poster_path', value);

  String? get mediaType => getField<String>('media_type');
  set mediaType(String? value) => setField<String>('media_type', value);

  int? get genreIds0 => getField<int>('genre_ids/0');
  set genreIds0(int? value) => setField<int>('genre_ids/0', value);

  double? get popularity => getField<double>('popularity');
  set popularity(double? value) => setField<double>('popularity', value);

  String? get releaseDate => getField<String>('release_date');
  set releaseDate(String? value) => setField<String>('release_date', value);

  double? get voteAverage => getField<double>('vote_average');
  set voteAverage(double? value) => setField<double>('vote_average', value);

  int? get voteCount => getField<int>('vote_count');
  set voteCount(int? value) => setField<int>('vote_count', value);

  String? get movieUrl => getField<String>('movie_url');
  set movieUrl(String? value) => setField<String>('movie_url', value);

  String? get trailerUrl => getField<String>('trailer_url');
  set trailerUrl(String? value) => setField<String>('trailer_url', value);

  int get uid => getField<int>('uid')!;
  set uid(int value) => setField<int>('uid', value);
}
