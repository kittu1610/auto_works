import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'members_record.g.dart';

abstract class MembersRecord
    implements Built<MembersRecord, MembersRecordBuilder> {
  static Serializer<MembersRecord> get serializer => _$membersRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get name;

  @nullable
  String get email;

  @nullable
  double get fee;

  @nullable
  String get legalEntry;

  @nullable
  String get residence;

  @nullable
  String get office;

  @nullable
  int get pincode;

  @nullable
  String get taluk;

  @nullable
  String get panNumber;

  @nullable
  String get gstinNumber;

  @nullable
  String get webDetail;

  @nullable
  String get phone;

  @nullable
  DateTime get dateOfEstablishment;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MembersRecordBuilder builder) => builder
    ..uid = ''
    ..name = ''
    ..email = ''
    ..fee = 0.0
    ..legalEntry = ''
    ..residence = ''
    ..office = ''
    ..pincode = 0
    ..taluk = ''
    ..panNumber = ''
    ..gstinNumber = ''
    ..webDetail = ''
    ..phone = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('members');

  static Stream<MembersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MembersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MembersRecord._();
  factory MembersRecord([void Function(MembersRecordBuilder) updates]) =
      _$MembersRecord;

  static MembersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMembersRecordData({
  String uid,
  String name,
  String email,
  double fee,
  String legalEntry,
  String residence,
  String office,
  int pincode,
  String taluk,
  String panNumber,
  String gstinNumber,
  String webDetail,
  String phone,
  DateTime dateOfEstablishment,
}) =>
    serializers.toFirestore(
        MembersRecord.serializer,
        MembersRecord((m) => m
          ..uid = uid
          ..name = name
          ..email = email
          ..fee = fee
          ..legalEntry = legalEntry
          ..residence = residence
          ..office = office
          ..pincode = pincode
          ..taluk = taluk
          ..panNumber = panNumber
          ..gstinNumber = gstinNumber
          ..webDetail = webDetail
          ..phone = phone
          ..dateOfEstablishment = dateOfEstablishment));
