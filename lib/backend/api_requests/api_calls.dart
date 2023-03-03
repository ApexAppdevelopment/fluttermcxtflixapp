import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TrendingCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Trending',
      apiUrl:
          'https://api.themoviedb.org/3/trending/movie/week?api_key=de74b24cb492e56c4c161adfd586421e',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic resualts(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      );
  static dynamic page(dynamic response) => getJsonField(
        response,
        r'''$.total_pages''',
        true,
      );
  static dynamic allpages(dynamic response) => getJsonField(
        response,
        r'''$.total_results''',
        true,
      );
}

class NowPlayingMoviesCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'nowPlayingMovies',
      apiUrl:
          'https://api.themoviedb.org/3/movie/now_playing?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic result(dynamic response) => getJsonField(
        response,
        r'''$.total_pages''',
        true,
      );
}

class TvShowsOnAirCall {
  static Future<ApiCallResponse> call({
    int? page = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TvShowsOnAir',
      apiUrl:
          'https://api.themoviedb.org/3/tv/popular?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TvShowsInfoCall {
  static Future<ApiCallResponse> call({
    int? tvId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TvShowsInfo',
      apiUrl:
          'https://api.themoviedb.org/3/tv/${tvId}?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PopularMoviesCall {
  static Future<ApiCallResponse> call({
    List<int>? totalPageList,
  }) {
    final totalPage = _serializeList(totalPageList);

    return ApiManager.instance.makeApiCall(
      callName: 'PopularMovies',
      apiUrl:
          'https://api.themoviedb.org/3/movie/top_rated?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US&',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'total_pages': 543,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic totalpages(dynamic response) => getJsonField(
        response,
        r'''$.total_pages''',
        true,
      );
}

class MovieDetailsCall {
  static Future<ApiCallResponse> call({
    int? movieId = 718789,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'MovieDetails',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class MovieCastCall {
  static Future<ApiCallResponse> call({
    int? movieId = 718789,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'MovieCast',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}/credits?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class MovieImagesCall {
  static Future<ApiCallResponse> call({
    int? movieId = 718789,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'MovieImages',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}/images?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SimilerMoviesCall {
  static Future<ApiCallResponse> call({
    int? movieId = 453395,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SimilerMovies',
      apiUrl:
          'https://api.themoviedb.org/3/movie/${movieId}/similar?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US&page=1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SearchMoviesCall {
  static Future<ApiCallResponse> call({
    String? query = 'Deadpool',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'searchMovies',
      apiUrl:
          'https://api.themoviedb.org/3/search/movie?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US&query=${query}&page=1&include_adult=false',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TvCastsCall {
  static Future<ApiCallResponse> call({
    int? tvId = 66732,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TvCasts',
      apiUrl:
          'https://api.themoviedb.org/3/tv/${tvId}/credits?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SimilarTvShowsCall {
  static Future<ApiCallResponse> call({
    int? tvId = 66732,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SimilarTvShows',
      apiUrl:
          'https://api.themoviedb.org/3/tv/${tvId}/similar?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US&page=1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EpisodesCall {
  static Future<ApiCallResponse> call({
    int? tvId = 66732,
    int? seasonNumber = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Episodes',
      apiUrl:
          'https://api.themoviedb.org/3/tv/${tvId}/season/${seasonNumber}?api_key=de74b24cb492e56c4c161adfd586421e&language=en-US',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
