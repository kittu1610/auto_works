// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:excel/excel.dart';

Future download(
  List<IncomeRecord> income,
  List<ExpenseRecord> expense,
) async {
  // Add your function code here!

  // Add your function code here!
  List<String> heading = [
    "income",
    "amount",
    "expense",
    "amount",
  ];

  var excel = Excel.createExcel();
  Sheet sheetObject = excel["Sheet1"];
  var cell = sheetObject.cell(CellIndex.indexByString("A1"));
  cell.value = "Total Balance";
  sheetObject.appendRow(heading);

  List<Map> incomeMaps = [];
  for (int i = 0; i < income.length; i++) {
    incomeMaps.add({"income": income[i].category});
    incomeMaps.add({"amount": income[i].amount});
  }

  List<Map> expenseMaps = [];
  for (int i = 0; i < expense.length; i++) {
    expenseMaps.add({"expense": expense[i].category});
    expenseMaps.add({"amount": expense[i].amount});
  }
}
