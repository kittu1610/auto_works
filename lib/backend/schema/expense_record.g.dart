// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExpenseRecord> _$expenseRecordSerializer =
    new _$ExpenseRecordSerializer();

class _$ExpenseRecordSerializer implements StructuredSerializer<ExpenseRecord> {
  @override
  final Iterable<Type> types = const [ExpenseRecord, _$ExpenseRecord];
  @override
  final String wireName = 'ExpenseRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ExpenseRecord object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
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
  ExpenseRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExpenseRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
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

class _$ExpenseRecord extends ExpenseRecord {
  @override
  final String uid;
  @override
  final String description;
  @override
  final String category;
  @override
  final String amount;
  @override
  final DateTime date;
  @override
  final DocumentReference<Object> reference;

  factory _$ExpenseRecord([void Function(ExpenseRecordBuilder) updates]) =>
      (new ExpenseRecordBuilder()..update(updates)).build();

  _$ExpenseRecord._(
      {this.uid,
      this.description,
      this.category,
      this.amount,
      this.date,
      this.reference})
      : super._();

  @override
  ExpenseRecord rebuild(void Function(ExpenseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpenseRecordBuilder toBuilder() => new ExpenseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpenseRecord &&
        uid == other.uid &&
        description == other.description &&
        category == other.category &&
        amount == other.amount &&
        date == other.date &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, uid.hashCode), description.hashCode),
                    category.hashCode),
                amount.hashCode),
            date.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExpenseRecord')
          ..add('uid', uid)
          ..add('description', description)
          ..add('category', category)
          ..add('amount', amount)
          ..add('date', date)
          ..add('reference', reference))
        .toString();
  }
}

class ExpenseRecordBuilder
    implements Builder<ExpenseRecord, ExpenseRecordBuilder> {
  _$ExpenseRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _amount;
  String get amount => _$this._amount;
  set amount(String amount) => _$this._amount = amount;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ExpenseRecordBuilder() {
    ExpenseRecord._initializeBuilder(this);
  }

  ExpenseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _description = $v.description;
      _category = $v.category;
      _amount = $v.amount;
      _date = $v.date;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpenseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpenseRecord;
  }

  @override
  void update(void Function(ExpenseRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExpenseRecord build() {
    final _$result = _$v ??
        new _$ExpenseRecord._(
            uid: uid,
            description: description,
            category: category,
            amount: amount,
            date: date,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
