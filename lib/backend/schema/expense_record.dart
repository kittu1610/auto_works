import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'expense_record.g.dart';

abstract class ExpenseRecord
    implements Built<ExpenseRecord, ExpenseRecordBuilder> {
  static Serializer<ExpenseRecord> get serializer => _$expenseRecordSerializer;

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

  static void _initializeBuilder(ExpenseRecordBuilder builder) => builder
    ..uid = ''
    ..description = ''
    ..category = ''
    ..amount = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expense');

  static Stream<ExpenseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ExpenseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ExpenseRecord._();
  factory ExpenseRecord([void Function(ExpenseRecordBuilder) updates]) =
      _$ExpenseRecord;

  static ExpenseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createExpenseRecordData({
  String uid,
  String description,
  String category,
  String amount,
  DateTime date,
}) =>
    serializers.toFirestore(
        ExpenseRecord.serializer,
        ExpenseRecord((e) => e
          ..uid = uid
          ..description = description
          ..category = category
          ..amount = amount
          ..date = date));
