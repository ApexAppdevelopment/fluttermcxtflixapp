// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goodmovies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GoodmoviesRecord> _$goodmoviesRecordSerializer =
    new _$GoodmoviesRecordSerializer();

class _$GoodmoviesRecordSerializer
    implements StructuredSerializer<GoodmoviesRecord> {
  @override
  final Iterable<Type> types = const [GoodmoviesRecord, _$GoodmoviesRecord];
  @override
  final String wireName = 'GoodmoviesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GoodmoviesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullmovie;
    if (value != null) {
      result
        ..add('fullmovie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cover;
    if (value != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.movietrailer;
    if (value != null) {
      result
        ..add('movietrailer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
  GoodmoviesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GoodmoviesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fullmovie':
          result.fullmovie = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'movietrailer':
          result.movietrailer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
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

class _$GoodmoviesRecord extends GoodmoviesRecord {
  @override
  final String? title;
  @override
  final String? fullmovie;
  @override
  final int? number;
  @override
  final String? cover;
  @override
  final String? movietrailer;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GoodmoviesRecord(
          [void Function(GoodmoviesRecordBuilder)? updates]) =>
      (new GoodmoviesRecordBuilder()..update(updates))._build();

  _$GoodmoviesRecord._(
      {this.title,
      this.fullmovie,
      this.number,
      this.cover,
      this.movietrailer,
      this.description,
      this.ffRef})
      : super._();

  @override
  GoodmoviesRecord rebuild(void Function(GoodmoviesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoodmoviesRecordBuilder toBuilder() =>
      new GoodmoviesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoodmoviesRecord &&
        title == other.title &&
        fullmovie == other.fullmovie &&
        number == other.number &&
        cover == other.cover &&
        movietrailer == other.movietrailer &&
        description == other.description &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), fullmovie.hashCode),
                        number.hashCode),
                    cover.hashCode),
                movietrailer.hashCode),
            description.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoodmoviesRecord')
          ..add('title', title)
          ..add('fullmovie', fullmovie)
          ..add('number', number)
          ..add('cover', cover)
          ..add('movietrailer', movietrailer)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GoodmoviesRecordBuilder
    implements Builder<GoodmoviesRecord, GoodmoviesRecordBuilder> {
  _$GoodmoviesRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _fullmovie;
  String? get fullmovie => _$this._fullmovie;
  set fullmovie(String? fullmovie) => _$this._fullmovie = fullmovie;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  String? _movietrailer;
  String? get movietrailer => _$this._movietrailer;
  set movietrailer(String? movietrailer) => _$this._movietrailer = movietrailer;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GoodmoviesRecordBuilder() {
    GoodmoviesRecord._initializeBuilder(this);
  }

  GoodmoviesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _fullmovie = $v.fullmovie;
      _number = $v.number;
      _cover = $v.cover;
      _movietrailer = $v.movietrailer;
      _description = $v.description;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoodmoviesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoodmoviesRecord;
  }

  @override
  void update(void Function(GoodmoviesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoodmoviesRecord build() => _build();

  _$GoodmoviesRecord _build() {
    final _$result = _$v ??
        new _$GoodmoviesRecord._(
            title: title,
            fullmovie: fullmovie,
            number: number,
            cover: cover,
            movietrailer: movietrailer,
            description: description,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
