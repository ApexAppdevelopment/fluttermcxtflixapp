import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'goodmovies_record.g.dart';

abstract class GoodmoviesRecord
    implements Built<GoodmoviesRecord, GoodmoviesRecordBuilder> {
  static Serializer<GoodmoviesRecord> get serializer =>
      _$goodmoviesRecordSerializer;

  String? get title;

  String? get fullmovie;

  int? get number;

  String? get cover;

  String? get movietrailer;

  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GoodmoviesRecordBuilder builder) => builder
    ..title = ''
    ..fullmovie = ''
    ..number = 0
    ..cover = ''
    ..movietrailer = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goodmovies');

  static Stream<GoodmoviesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GoodmoviesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GoodmoviesRecord._();
  factory GoodmoviesRecord([void Function(GoodmoviesRecordBuilder) updates]) =
      _$GoodmoviesRecord;

  static GoodmoviesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGoodmoviesRecordData({
  String? title,
  String? fullmovie,
  int? number,
  String? cover,
  String? movietrailer,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    GoodmoviesRecord.serializer,
    GoodmoviesRecord(
      (g) => g
        ..title = title
        ..fullmovie = fullmovie
        ..number = number
        ..cover = cover
        ..movietrailer = movietrailer
        ..description = description,
    ),
  );

  return firestoreData;
}
