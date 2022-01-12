import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'income_record.g.dart';

abstract class IncomeRecord
    implements Built<IncomeRecord, IncomeRecordBuilder> {
  static Serializer<IncomeRecord> get serializer => _$incomeRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get description;

  @nullable
  String get category;

  @nullable
  String get amount;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(IncomeRecordBuilder builder) => builder
    ..uid = ''
    ..description = ''
    ..category = ''
    ..amount = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('income');

  static Stream<IncomeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<IncomeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  IncomeRecord._();
  factory IncomeRecord([void Function(IncomeRecordBuilder) updates]) =
      _$IncomeRecord;

  static IncomeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createIncomeRecordData({
  String uid,
  String description,
  String category,
  String amount,
  DateTime date,
}) =>
    serializers.toFirestore(
        IncomeRecord.serializer,
        IncomeRecord((i) => i
          ..uid = uid
          ..description = description
          ..category = category
          ..amount = amount
          ..date = date));
