import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mainmovie_record.g.dart';

abstract class MainmovieRecord
    implements Built<MainmovieRecord, MainmovieRecordBuilder> {
  static Serializer<MainmovieRecord> get serializer =>
      _$mainmovieRecordSerializer;

  String? get imagebanner;

  String? get title;

  String? get movie;

  String? get trailer;

  int? get duration;

  int? get id;

  String? get description;

  @BuiltValueField(wireName: 'Genre')
  String? get genre;

  @BuiltValueField(wireName: 'Cast1')
  String? get cast1;

  @BuiltValueField(wireName: 'Cast2')
  String? get cast2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MainmovieRecordBuilder builder) => builder
    ..imagebanner = ''
    ..title = ''
    ..movie = ''
    ..trailer = ''
    ..duration = 0
    ..id = 0
    ..description = ''
    ..genre = ''
    ..cast1 = ''
    ..cast2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mainmovie');

  static Stream<MainmovieRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MainmovieRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MainmovieRecord._();
  factory MainmovieRecord([void Function(MainmovieRecordBuilder) updates]) =
      _$MainmovieRecord;

  static MainmovieRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMainmovieRecordData({
  String? imagebanner,
  String? title,
  String? movie,
  String? trailer,
  int? duration,
  int? id,
  String? description,
  String? genre,
  String? cast1,
  String? cast2,
}) {
  final firestoreData = serializers.toFirestore(
    MainmovieRecord.serializer,
    MainmovieRecord(
      (m) => m
        ..imagebanner = imagebanner
        ..title = title
        ..movie = movie
        ..trailer = trailer
        ..duration = duration
        ..id = id
        ..description = description
        ..genre = genre
        ..cast1 = cast1
        ..cast2 = cast2,
    ),
  );

  return firestoreData;
}
