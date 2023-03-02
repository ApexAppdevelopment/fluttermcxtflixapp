import '../database.dart';

class TvshowTable extends SupabaseTable<TvshowRow> {
  @override
  String get tableName => 'tvshow';

  @override
  TvshowRow createRow(Map<String, dynamic> data) => TvshowRow(data);
}

class TvshowRow extends SupabaseDataRow {
  TvshowRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TvshowTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get resultsBackdropPath => getField<String>('results__backdrop_path');
  set resultsBackdropPath(String? value) =>
      setField<String>('results__backdrop_path', value);

  String? get resultsFirstAirDate =>
      getField<String>('results__first_air_date');
  set resultsFirstAirDate(String? value) =>
      setField<String>('results__first_air_date', value);

  int? get resultsId => getField<int>('results__id');
  set resultsId(int? value) => setField<int>('results__id', value);

  String? get resultsName => getField<String>('results__name');
  set resultsName(String? value) => setField<String>('results__name', value);

  String? get resultsOriginCountry =>
      getField<String>('results__origin_country__-');
  set resultsOriginCountry(String? value) =>
      setField<String>('results__origin_country__-', value);

  String? get resultsOriginalLanguage =>
      getField<String>('results__original_language');
  set resultsOriginalLanguage(String? value) =>
      setField<String>('results__original_language', value);

  String? get resultsOverview => getField<String>('results__overview');
  set resultsOverview(String? value) =>
      setField<String>('results__overview', value);

  double? get resultsPopularity => getField<double>('results__popularity');
  set resultsPopularity(double? value) =>
      setField<double>('results__popularity', value);

  String? get resultsPosterPath => getField<String>('results__poster_path');
  set resultsPosterPath(String? value) =>
      setField<String>('results__poster_path', value);

  double? get resultsVoteAverage => getField<double>('results__vote_average');
  set resultsVoteAverage(double? value) =>
      setField<double>('results__vote_average', value);
}
