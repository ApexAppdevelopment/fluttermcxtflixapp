import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'watch_history_record.g.dart';

abstract class WatchHistoryRecord
    implements Built<WatchHistoryRecord, WatchHistoryRecordBuilder> {
  static Serializer<WatchHistoryRecord> get serializer =>
      _$watchHistoryRecordSerializer;

  DocumentReference? get user;

  String? get movietitle;

  DateTime? get watchon;

  String? get moviebanner;

  @BuiltValueField(wireName: 'start_time')
  String? get startTime;

  @BuiltValueField(wireName: 'end_time')
  String? get endTime;

  int? get watchmins;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WatchHistoryRecordBuilder builder) => builder
    ..movietitle = ''
    ..moviebanner = ''
    ..startTime = ''
    ..endTime = ''
    ..watchmins = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('WatchHistory');

  static Stream<WatchHistoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WatchHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WatchHistoryRecord._();
  factory WatchHistoryRecord(
          [void Function(WatchHistoryRecordBuilder) updates]) =
      _$WatchHistoryRecord;

  static WatchHistoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWatchHistoryRecordData({
  DocumentReference? user,
  String? movietitle,
  DateTime? watchon,
  String? moviebanner,
  String? startTime,
  String? endTime,
  int? watchmins,
}) {
  final firestoreData = serializers.toFirestore(
    WatchHistoryRecord.serializer,
    WatchHistoryRecord(
      (w) => w
        ..user = user
        ..movietitle = movietitle
        ..watchon = watchon
        ..moviebanner = moviebanner
        ..startTime = startTime
        ..endTime = endTime
        ..watchmins = watchmins,
    ),
  );

  return firestoreData;
}
