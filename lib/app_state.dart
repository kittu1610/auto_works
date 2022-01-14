import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _accountImgPath = prefs.getString('ff_accountImgPath') ?? _accountImgPath;
    _incomeDate = prefs.containsKey('ff_incomeDate')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_incomeDate'))
        : null;
    _expenseDate = prefs.containsKey('ff_expenseDate')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_expenseDate'))
        : null;
    _passbookDate = prefs.containsKey('ff_passbookDate')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_passbookDate'))
        : null;
    _editIncomeDate = prefs.containsKey('ff_editIncomeDate')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_editIncomeDate'))
        : null;
    _totalIncomeAmount =
        prefs.getDouble('ff_totalIncomeAmount') ?? _totalIncomeAmount;
    _totalExpenseAmount =
        prefs.getDouble('ff_totalExpenseAmount') ?? _totalExpenseAmount;
    _editExpenseDate = prefs.containsKey('ff_editExpenseDate')
        ? DateTime.fromMillisecondsSinceEpoch(
            prefs.getInt('ff_editExpenseDate'))
        : null;
  }

  SharedPreferences prefs;

  String _accountImgPath;
  String get accountImgPath => _accountImgPath;
  set accountImgPath(String _value) {
    _accountImgPath = _value;
    prefs.setString('ff_accountImgPath', _value);
  }

  DateTime _incomeDate;
  DateTime get incomeDate => _incomeDate;
  set incomeDate(DateTime _value) {
    _incomeDate = _value;
    prefs.setInt('ff_incomeDate', _value.millisecondsSinceEpoch);
  }

  DateTime _expenseDate;
  DateTime get expenseDate => _expenseDate;
  set expenseDate(DateTime _value) {
    _expenseDate = _value;
    prefs.setInt('ff_expenseDate', _value.millisecondsSinceEpoch);
  }

  DateTime _passbookDate;
  DateTime get passbookDate => _passbookDate;
  set passbookDate(DateTime _value) {
    _passbookDate = _value;
    prefs.setInt('ff_passbookDate', _value.millisecondsSinceEpoch);
  }

  DateTime _editIncomeDate;
  DateTime get editIncomeDate => _editIncomeDate;
  set editIncomeDate(DateTime _value) {
    _editIncomeDate = _value;
    prefs.setInt('ff_editIncomeDate', _value.millisecondsSinceEpoch);
  }

  double _totalIncomeAmount = 0.0;
  double get totalIncomeAmount => _totalIncomeAmount;
  set totalIncomeAmount(double _value) {
    _totalIncomeAmount = _value;
    prefs.setDouble('ff_totalIncomeAmount', _value);
  }

  double _totalExpenseAmount = 0.0;
  double get totalExpenseAmount => _totalExpenseAmount;
  set totalExpenseAmount(double _value) {
    _totalExpenseAmount = _value;
    prefs.setDouble('ff_totalExpenseAmount', _value);
  }

  DateTime _editExpenseDate;
  DateTime get editExpenseDate => _editExpenseDate;
  set editExpenseDate(DateTime _value) {
    _editExpenseDate = _value;
    prefs.setInt('ff_editExpenseDate', _value.millisecondsSinceEpoch);
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
