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
  String get partnerName1;

  @nullable
  String get partnerName2;

  @nullable
  String get partnerEmail1;

  @nullable
  String get partnerEmail2;

  @nullable
  String get categories;

  @nullable
  String get fillRefNo;

  @nullable
  DateTime get fillDate;

  @nullable
  String get fillCost;

  @nullable
  String get mode;

  @nullable
  String get applicationReceived;

  @nullable
  String get inward;

  @nullable
  String get approvedOn;

  @nullable
  String get receiptNo;

  @nullable
  DateTime get approvedDate;

  @nullable
  String get remarks;

  @nullable
  String get memberImgPath;

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
    ..phone = ''
    ..partnerName1 = ''
    ..partnerName2 = ''
    ..partnerEmail1 = ''
    ..partnerEmail2 = ''
    ..categories = ''
    ..fillRefNo = ''
    ..fillCost = ''
    ..mode = ''
    ..applicationReceived = ''
    ..inward = ''
    ..approvedOn = ''
    ..receiptNo = ''
    ..remarks = ''
    ..memberImgPath = '';

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
  String partnerName1,
  String partnerName2,
  String partnerEmail1,
  String partnerEmail2,
  String categories,
  String fillRefNo,
  DateTime fillDate,
  String fillCost,
  String mode,
  String applicationReceived,
  String inward,
  String approvedOn,
  String receiptNo,
  DateTime approvedDate,
  String remarks,
  String memberImgPath,
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
          ..dateOfEstablishment = dateOfEstablishment
          ..partnerName1 = partnerName1
          ..partnerName2 = partnerName2
          ..partnerEmail1 = partnerEmail1
          ..partnerEmail2 = partnerEmail2
          ..categories = categories
          ..fillRefNo = fillRefNo
          ..fillDate = fillDate
          ..fillCost = fillCost
          ..mode = mode
          ..applicationReceived = applicationReceived
          ..inward = inward
          ..approvedOn = approvedOn
          ..receiptNo = receiptNo
          ..approvedDate = approvedDate
          ..remarks = remarks
          ..memberImgPath = memberImgPath));
