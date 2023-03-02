// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_history_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WatchHistoryRecord> _$watchHistoryRecordSerializer =
    new _$WatchHistoryRecordSerializer();

class _$WatchHistoryRecordSerializer
    implements StructuredSerializer<WatchHistoryRecord> {
  @override
  final Iterable<Type> types = const [WatchHistoryRecord, _$WatchHistoryRecord];
  @override
  final String wireName = 'WatchHistoryRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WatchHistoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.movietitle;
    if (value != null) {
      result
        ..add('movietitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.watchon;
    if (value != null) {
      result
        ..add('watchon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.moviebanner;
    if (value != null) {
      result
        ..add('moviebanner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('start_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('end_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.watchmins;
    if (value != null) {
      result
        ..add('watchmins')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  WatchHistoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WatchHistoryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'movietitle':
          result.movietitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'watchon':
          result.watchon = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'moviebanner':
          result.moviebanner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'watchmins':
          result.watchmins = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$WatchHistoryRecord extends WatchHistoryRecord {
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? movietitle;
  @override
  final DateTime? watchon;
  @override
  final String? moviebanner;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final int? watchmins;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WatchHistoryRecord(
          [void Function(WatchHistoryRecordBuilder)? updates]) =>
      (new WatchHistoryRecordBuilder()..update(updates))._build();

  _$WatchHistoryRecord._(
      {this.user,
      this.movietitle,
      this.watchon,
      this.moviebanner,
      this.startTime,
      this.endTime,
      this.watchmins,
      this.ffRef})
      : super._();

  @override
  WatchHistoryRecord rebuild(
          void Function(WatchHistoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WatchHistoryRecordBuilder toBuilder() =>
      new WatchHistoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WatchHistoryRecord &&
        user == other.user &&
        movietitle == other.movietitle &&
        watchon == other.watchon &&
        moviebanner == other.moviebanner &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        watchmins == other.watchmins &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, user.hashCode), movietitle.hashCode),
                            watchon.hashCode),
                        moviebanner.hashCode),
                    startTime.hashCode),
                endTime.hashCode),
            watchmins.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WatchHistoryRecord')
          ..add('user', user)
          ..add('movietitle', movietitle)
          ..add('watchon', watchon)
          ..add('moviebanner', moviebanner)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('watchmins', watchmins)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WatchHistoryRecordBuilder
    implements Builder<WatchHistoryRecord, WatchHistoryRecordBuilder> {
  _$WatchHistoryRecord? _$v;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _movietitle;
  String? get movietitle => _$this._movietitle;
  set movietitle(String? movietitle) => _$this._movietitle = movietitle;

  DateTime? _watchon;
  DateTime? get watchon => _$this._watchon;
  set watchon(DateTime? watchon) => _$this._watchon = watchon;

  String? _moviebanner;
  String? get moviebanner => _$this._moviebanner;
  set moviebanner(String? moviebanner) => _$this._moviebanner = moviebanner;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  int? _watchmins;
  int? get watchmins => _$this._watchmins;
  set watchmins(int? watchmins) => _$this._watchmins = watchmins;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WatchHistoryRecordBuilder() {
    WatchHistoryRecord._initializeBuilder(this);
  }

  WatchHistoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _movietitle = $v.movietitle;
      _watchon = $v.watchon;
      _moviebanner = $v.moviebanner;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _watchmins = $v.watchmins;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WatchHistoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WatchHistoryRecord;
  }

  @override
  void update(void Function(WatchHistoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WatchHistoryRecord build() => _build();

  _$WatchHistoryRecord _build() {
    final _$result = _$v ??
        new _$WatchHistoryRecord._(
            user: user,
            movietitle: movietitle,
            watchon: watchon,
            moviebanner: moviebanner,
            startTime: startTime,
            endTime: endTime,
            watchmins: watchmins,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
