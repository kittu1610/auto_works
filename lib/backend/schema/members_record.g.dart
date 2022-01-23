// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'members_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MembersRecord> _$membersRecordSerializer =
    new _$MembersRecordSerializer();

class _$MembersRecordSerializer implements StructuredSerializer<MembersRecord> {
  @override
  final Iterable<Type> types = const [MembersRecord, _$MembersRecord];
  @override
  final String wireName = 'MembersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MembersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fee;
    if (value != null) {
      result
        ..add('fee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.legalEntry;
    if (value != null) {
      result
        ..add('legalEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.residence;
    if (value != null) {
      result
        ..add('residence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.office;
    if (value != null) {
      result
        ..add('office')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pincode;
    if (value != null) {
      result
        ..add('pincode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.taluk;
    if (value != null) {
      result
        ..add('taluk')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.panNumber;
    if (value != null) {
      result
        ..add('panNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gstinNumber;
    if (value != null) {
      result
        ..add('gstinNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.webDetail;
    if (value != null) {
      result
        ..add('webDetail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfEstablishment;
    if (value != null) {
      result
        ..add('dateOfEstablishment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.partnerName1;
    if (value != null) {
      result
        ..add('partnerName1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.partnerName2;
    if (value != null) {
      result
        ..add('partnerName2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.partnerEmail1;
    if (value != null) {
      result
        ..add('partnerEmail1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.partnerEmail2;
    if (value != null) {
      result
        ..add('partnerEmail2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fillRefNo;
    if (value != null) {
      result
        ..add('fillRefNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fillDate;
    if (value != null) {
      result
        ..add('fillDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.fillCost;
    if (value != null) {
      result
        ..add('fillCost')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mode;
    if (value != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicationReceived;
    if (value != null) {
      result
        ..add('applicationReceived')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inward;
    if (value != null) {
      result
        ..add('inward')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.approvedOn;
    if (value != null) {
      result
        ..add('approvedOn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.receiptNo;
    if (value != null) {
      result
        ..add('receiptNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.approvedDate;
    if (value != null) {
      result
        ..add('approvedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.remarks;
    if (value != null) {
      result
        ..add('remarks')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memberImgPath;
    if (value != null) {
      result
        ..add('memberImgPath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  MembersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MembersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fee':
          result.fee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'legalEntry':
          result.legalEntry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'residence':
          result.residence = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'office':
          result.office = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'taluk':
          result.taluk = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'panNumber':
          result.panNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gstinNumber':
          result.gstinNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'webDetail':
          result.webDetail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateOfEstablishment':
          result.dateOfEstablishment = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'partnerName1':
          result.partnerName1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'partnerName2':
          result.partnerName2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'partnerEmail1':
          result.partnerEmail1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'partnerEmail2':
          result.partnerEmail2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'categories':
          result.categories = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fillRefNo':
          result.fillRefNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fillDate':
          result.fillDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'fillCost':
          result.fillCost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'applicationReceived':
          result.applicationReceived = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'inward':
          result.inward = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'approvedOn':
          result.approvedOn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'receiptNo':
          result.receiptNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'approvedDate':
          result.approvedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'remarks':
          result.remarks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'memberImgPath':
          result.memberImgPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$MembersRecord extends MembersRecord {
  @override
  final String uid;
  @override
  final String name;
  @override
  final String email;
  @override
  final double fee;
  @override
  final String legalEntry;
  @override
  final String residence;
  @override
  final String office;
  @override
  final int pincode;
  @override
  final String taluk;
  @override
  final String panNumber;
  @override
  final String gstinNumber;
  @override
  final String webDetail;
  @override
  final String phone;
  @override
  final DateTime dateOfEstablishment;
  @override
  final String partnerName1;
  @override
  final String partnerName2;
  @override
  final String partnerEmail1;
  @override
  final String partnerEmail2;
  @override
  final String categories;
  @override
  final String fillRefNo;
  @override
  final DateTime fillDate;
  @override
  final String fillCost;
  @override
  final String mode;
  @override
  final String applicationReceived;
  @override
  final String inward;
  @override
  final String approvedOn;
  @override
  final String receiptNo;
  @override
  final DateTime approvedDate;
  @override
  final String remarks;
  @override
  final String memberImgPath;
  @override
  final DocumentReference<Object> reference;

  factory _$MembersRecord([void Function(MembersRecordBuilder) updates]) =>
      (new MembersRecordBuilder()..update(updates)).build();

  _$MembersRecord._(
      {this.uid,
      this.name,
      this.email,
      this.fee,
      this.legalEntry,
      this.residence,
      this.office,
      this.pincode,
      this.taluk,
      this.panNumber,
      this.gstinNumber,
      this.webDetail,
      this.phone,
      this.dateOfEstablishment,
      this.partnerName1,
      this.partnerName2,
      this.partnerEmail1,
      this.partnerEmail2,
      this.categories,
      this.fillRefNo,
      this.fillDate,
      this.fillCost,
      this.mode,
      this.applicationReceived,
      this.inward,
      this.approvedOn,
      this.receiptNo,
      this.approvedDate,
      this.remarks,
      this.memberImgPath,
      this.reference})
      : super._();

  @override
  MembersRecord rebuild(void Function(MembersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MembersRecordBuilder toBuilder() => new MembersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MembersRecord &&
        uid == other.uid &&
        name == other.name &&
        email == other.email &&
        fee == other.fee &&
        legalEntry == other.legalEntry &&
        residence == other.residence &&
        office == other.office &&
        pincode == other.pincode &&
        taluk == other.taluk &&
        panNumber == other.panNumber &&
        gstinNumber == other.gstinNumber &&
        webDetail == other.webDetail &&
        phone == other.phone &&
        dateOfEstablishment == other.dateOfEstablishment &&
        partnerName1 == other.partnerName1 &&
        partnerName2 == other.partnerName2 &&
        partnerEmail1 == other.partnerEmail1 &&
        partnerEmail2 == other.partnerEmail2 &&
        categories == other.categories &&
        fillRefNo == other.fillRefNo &&
        fillDate == other.fillDate &&
        fillCost == other.fillCost &&
        mode == other.mode &&
        applicationReceived == other.applicationReceived &&
        inward == other.inward &&
        approvedOn == other.approvedOn &&
        receiptNo == other.receiptNo &&
        approvedDate == other.approvedDate &&
        remarks == other.remarks &&
        memberImgPath == other.memberImgPath &&
        reference == other.reference;
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, uid.hashCode), name.hashCode), email.hashCode), fee.hashCode), legalEntry.hashCode), residence.hashCode), office.hashCode), pincode.hashCode), taluk.hashCode), panNumber.hashCode), gstinNumber.hashCode), webDetail.hashCode),
                                                                                phone.hashCode),
                                                                            dateOfEstablishment.hashCode),
                                                                        partnerName1.hashCode),
                                                                    partnerName2.hashCode),
                                                                partnerEmail1.hashCode),
                                                            partnerEmail2.hashCode),
                                                        categories.hashCode),
                                                    fillRefNo.hashCode),
                                                fillDate.hashCode),
                                            fillCost.hashCode),
                                        mode.hashCode),
                                    applicationReceived.hashCode),
                                inward.hashCode),
                            approvedOn.hashCode),
                        receiptNo.hashCode),
                    approvedDate.hashCode),
                remarks.hashCode),
            memberImgPath.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MembersRecord')
          ..add('uid', uid)
          ..add('name', name)
          ..add('email', email)
          ..add('fee', fee)
          ..add('legalEntry', legalEntry)
          ..add('residence', residence)
          ..add('office', office)
          ..add('pincode', pincode)
          ..add('taluk', taluk)
          ..add('panNumber', panNumber)
          ..add('gstinNumber', gstinNumber)
          ..add('webDetail', webDetail)
          ..add('phone', phone)
          ..add('dateOfEstablishment', dateOfEstablishment)
          ..add('partnerName1', partnerName1)
          ..add('partnerName2', partnerName2)
          ..add('partnerEmail1', partnerEmail1)
          ..add('partnerEmail2', partnerEmail2)
          ..add('categories', categories)
          ..add('fillRefNo', fillRefNo)
          ..add('fillDate', fillDate)
          ..add('fillCost', fillCost)
          ..add('mode', mode)
          ..add('applicationReceived', applicationReceived)
          ..add('inward', inward)
          ..add('approvedOn', approvedOn)
          ..add('receiptNo', receiptNo)
          ..add('approvedDate', approvedDate)
          ..add('remarks', remarks)
          ..add('memberImgPath', memberImgPath)
          ..add('reference', reference))
        .toString();
  }
}

class MembersRecordBuilder
    implements Builder<MembersRecord, MembersRecordBuilder> {
  _$MembersRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  double _fee;
  double get fee => _$this._fee;
  set fee(double fee) => _$this._fee = fee;

  String _legalEntry;
  String get legalEntry => _$this._legalEntry;
  set legalEntry(String legalEntry) => _$this._legalEntry = legalEntry;

  String _residence;
  String get residence => _$this._residence;
  set residence(String residence) => _$this._residence = residence;

  String _office;
  String get office => _$this._office;
  set office(String office) => _$this._office = office;

  int _pincode;
  int get pincode => _$this._pincode;
  set pincode(int pincode) => _$this._pincode = pincode;

  String _taluk;
  String get taluk => _$this._taluk;
  set taluk(String taluk) => _$this._taluk = taluk;

  String _panNumber;
  String get panNumber => _$this._panNumber;
  set panNumber(String panNumber) => _$this._panNumber = panNumber;

  String _gstinNumber;
  String get gstinNumber => _$this._gstinNumber;
  set gstinNumber(String gstinNumber) => _$this._gstinNumber = gstinNumber;

  String _webDetail;
  String get webDetail => _$this._webDetail;
  set webDetail(String webDetail) => _$this._webDetail = webDetail;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  DateTime _dateOfEstablishment;
  DateTime get dateOfEstablishment => _$this._dateOfEstablishment;
  set dateOfEstablishment(DateTime dateOfEstablishment) =>
      _$this._dateOfEstablishment = dateOfEstablishment;

  String _partnerName1;
  String get partnerName1 => _$this._partnerName1;
  set partnerName1(String partnerName1) => _$this._partnerName1 = partnerName1;

  String _partnerName2;
  String get partnerName2 => _$this._partnerName2;
  set partnerName2(String partnerName2) => _$this._partnerName2 = partnerName2;

  String _partnerEmail1;
  String get partnerEmail1 => _$this._partnerEmail1;
  set partnerEmail1(String partnerEmail1) =>
      _$this._partnerEmail1 = partnerEmail1;

  String _partnerEmail2;
  String get partnerEmail2 => _$this._partnerEmail2;
  set partnerEmail2(String partnerEmail2) =>
      _$this._partnerEmail2 = partnerEmail2;

  String _categories;
  String get categories => _$this._categories;
  set categories(String categories) => _$this._categories = categories;

  String _fillRefNo;
  String get fillRefNo => _$this._fillRefNo;
  set fillRefNo(String fillRefNo) => _$this._fillRefNo = fillRefNo;

  DateTime _fillDate;
  DateTime get fillDate => _$this._fillDate;
  set fillDate(DateTime fillDate) => _$this._fillDate = fillDate;

  String _fillCost;
  String get fillCost => _$this._fillCost;
  set fillCost(String fillCost) => _$this._fillCost = fillCost;

  String _mode;
  String get mode => _$this._mode;
  set mode(String mode) => _$this._mode = mode;

  String _applicationReceived;
  String get applicationReceived => _$this._applicationReceived;
  set applicationReceived(String applicationReceived) =>
      _$this._applicationReceived = applicationReceived;

  String _inward;
  String get inward => _$this._inward;
  set inward(String inward) => _$this._inward = inward;

  String _approvedOn;
  String get approvedOn => _$this._approvedOn;
  set approvedOn(String approvedOn) => _$this._approvedOn = approvedOn;

  String _receiptNo;
  String get receiptNo => _$this._receiptNo;
  set receiptNo(String receiptNo) => _$this._receiptNo = receiptNo;

  DateTime _approvedDate;
  DateTime get approvedDate => _$this._approvedDate;
  set approvedDate(DateTime approvedDate) =>
      _$this._approvedDate = approvedDate;

  String _remarks;
  String get remarks => _$this._remarks;
  set remarks(String remarks) => _$this._remarks = remarks;

  String _memberImgPath;
  String get memberImgPath => _$this._memberImgPath;
  set memberImgPath(String memberImgPath) =>
      _$this._memberImgPath = memberImgPath;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MembersRecordBuilder() {
    MembersRecord._initializeBuilder(this);
  }

  MembersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _name = $v.name;
      _email = $v.email;
      _fee = $v.fee;
      _legalEntry = $v.legalEntry;
      _residence = $v.residence;
      _office = $v.office;
      _pincode = $v.pincode;
      _taluk = $v.taluk;
      _panNumber = $v.panNumber;
      _gstinNumber = $v.gstinNumber;
      _webDetail = $v.webDetail;
      _phone = $v.phone;
      _dateOfEstablishment = $v.dateOfEstablishment;
      _partnerName1 = $v.partnerName1;
      _partnerName2 = $v.partnerName2;
      _partnerEmail1 = $v.partnerEmail1;
      _partnerEmail2 = $v.partnerEmail2;
      _categories = $v.categories;
      _fillRefNo = $v.fillRefNo;
      _fillDate = $v.fillDate;
      _fillCost = $v.fillCost;
      _mode = $v.mode;
      _applicationReceived = $v.applicationReceived;
      _inward = $v.inward;
      _approvedOn = $v.approvedOn;
      _receiptNo = $v.receiptNo;
      _approvedDate = $v.approvedDate;
      _remarks = $v.remarks;
      _memberImgPath = $v.memberImgPath;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MembersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MembersRecord;
  }

  @override
  void update(void Function(MembersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MembersRecord build() {
    final _$result = _$v ??
        new _$MembersRecord._(
            uid: uid,
            name: name,
            email: email,
            fee: fee,
            legalEntry: legalEntry,
            residence: residence,
            office: office,
            pincode: pincode,
            taluk: taluk,
            panNumber: panNumber,
            gstinNumber: gstinNumber,
            webDetail: webDetail,
            phone: phone,
            dateOfEstablishment: dateOfEstablishment,
            partnerName1: partnerName1,
            partnerName2: partnerName2,
            partnerEmail1: partnerEmail1,
            partnerEmail2: partnerEmail2,
            categories: categories,
            fillRefNo: fillRefNo,
            fillDate: fillDate,
            fillCost: fillCost,
            mode: mode,
            applicationReceived: applicationReceived,
            inward: inward,
            approvedOn: approvedOn,
            receiptNo: receiptNo,
            approvedDate: approvedDate,
            remarks: remarks,
            memberImgPath: memberImgPath,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
