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
                                                            $jc(0,
                                                                uid.hashCode),
                                                            name.hashCode),
                                                        email.hashCode),
                                                    fee.hashCode),
                                                legalEntry.hashCode),
                                            residence.hashCode),
                                        office.hashCode),
                                    pincode.hashCode),
                                taluk.hashCode),
                            panNumber.hashCode),
                        gstinNumber.hashCode),
                    webDetail.hashCode),
                phone.hashCode),
            dateOfEstablishment.hashCode),
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
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
