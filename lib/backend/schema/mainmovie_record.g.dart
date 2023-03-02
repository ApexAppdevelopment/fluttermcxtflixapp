// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mainmovie_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MainmovieRecord> _$mainmovieRecordSerializer =
    new _$MainmovieRecordSerializer();

class _$MainmovieRecordSerializer
    implements StructuredSerializer<MainmovieRecord> {
  @override
  final Iterable<Type> types = const [MainmovieRecord, _$MainmovieRecord];
  @override
  final String wireName = 'MainmovieRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MainmovieRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imagebanner;
    if (value != null) {
      result
        ..add('imagebanner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.movie;
    if (value != null) {
      result
        ..add('movie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.trailer;
    if (value != null) {
      result
        ..add('trailer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genre;
    if (value != null) {
      result
        ..add('Genre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cast1;
    if (value != null) {
      result
        ..add('Cast1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cast2;
    if (value != null) {
      result
        ..add('Cast2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  MainmovieRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainmovieRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imagebanner':
          result.imagebanner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'movie':
          result.movie = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'trailer':
          result.trailer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Cast1':
          result.cast1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Cast2':
          result.cast2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$MainmovieRecord extends MainmovieRecord {
  @override
  final String? imagebanner;
  @override
  final String? title;
  @override
  final String? movie;
  @override
  final String? trailer;
  @override
  final int? duration;
  @override
  final int? id;
  @override
  final String? description;
  @override
  final String? genre;
  @override
  final String? cast1;
  @override
  final String? cast2;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MainmovieRecord([void Function(MainmovieRecordBuilder)? updates]) =>
      (new MainmovieRecordBuilder()..update(updates))._build();

  _$MainmovieRecord._(
      {this.imagebanner,
      this.title,
      this.movie,
      this.trailer,
      this.duration,
      this.id,
      this.description,
      this.genre,
      this.cast1,
      this.cast2,
      this.ffRef})
      : super._();

  @override
  MainmovieRecord rebuild(void Function(MainmovieRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainmovieRecordBuilder toBuilder() =>
      new MainmovieRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainmovieRecord &&
        imagebanner == other.imagebanner &&
        title == other.title &&
        movie == other.movie &&
        trailer == other.trailer &&
        duration == other.duration &&
        id == other.id &&
        description == other.description &&
        genre == other.genre &&
        cast1 == other.cast1 &&
        cast2 == other.cast2 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, imagebanner.hashCode),
                                            title.hashCode),
                                        movie.hashCode),
                                    trailer.hashCode),
                                duration.hashCode),
                            id.hashCode),
                        description.hashCode),
                    genre.hashCode),
                cast1.hashCode),
            cast2.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MainmovieRecord')
          ..add('imagebanner', imagebanner)
          ..add('title', title)
          ..add('movie', movie)
          ..add('trailer', trailer)
          ..add('duration', duration)
          ..add('id', id)
          ..add('description', description)
          ..add('genre', genre)
          ..add('cast1', cast1)
          ..add('cast2', cast2)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MainmovieRecordBuilder
    implements Builder<MainmovieRecord, MainmovieRecordBuilder> {
  _$MainmovieRecord? _$v;

  String? _imagebanner;
  String? get imagebanner => _$this._imagebanner;
  set imagebanner(String? imagebanner) => _$this._imagebanner = imagebanner;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _movie;
  String? get movie => _$this._movie;
  set movie(String? movie) => _$this._movie = movie;

  String? _trailer;
  String? get trailer => _$this._trailer;
  set trailer(String? trailer) => _$this._trailer = trailer;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  String? _cast1;
  String? get cast1 => _$this._cast1;
  set cast1(String? cast1) => _$this._cast1 = cast1;

  String? _cast2;
  String? get cast2 => _$this._cast2;
  set cast2(String? cast2) => _$this._cast2 = cast2;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MainmovieRecordBuilder() {
    MainmovieRecord._initializeBuilder(this);
  }

  MainmovieRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imagebanner = $v.imagebanner;
      _title = $v.title;
      _movie = $v.movie;
      _trailer = $v.trailer;
      _duration = $v.duration;
      _id = $v.id;
      _description = $v.description;
      _genre = $v.genre;
      _cast1 = $v.cast1;
      _cast2 = $v.cast2;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainmovieRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainmovieRecord;
  }

  @override
  void update(void Function(MainmovieRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainmovieRecord build() => _build();

  _$MainmovieRecord _build() {
    final _$result = _$v ??
        new _$MainmovieRecord._(
            imagebanner: imagebanner,
            title: title,
            movie: movie,
            trailer: trailer,
            duration: duration,
            id: id,
            description: description,
            genre: genre,
            cast1: cast1,
            cast2: cast2,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
