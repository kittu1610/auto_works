// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:excel/excel.dart';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:universal_html/html.dart' as html;
import 'package:universal_html/js.dart' as js;
import 'package:open_file/open_file.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:auto_works/flutter_flow/custom_functions.dart' as functions;

Future download(
  List<IncomeRecord> income,
  List<ExpenseRecord> expense,
) async {
  // Add your function code here!

  List<Map> incomeMaps = [];
  for (int i = 0; i < income.length; i++) {
    incomeMaps.add({"income": income[i].category, "amount": income[i].amount});
  }

  List<Map> expenseMaps = [];
  for (int i = 0; i < expense.length; i++) {
    expenseMaps
        .add({"expense": expense[i].category, "amount": expense[i].amount});
  }

  var totalBalance = functions
      .total(functions.getIncome(income), functions.getExpense(expense))
      .toString();

  var excel = Excel.createExcel();
  Sheet sheetObject = excel["Sheet1"];

  CellStyle cellStyle = CellStyle(
    fontFamily: getFontFamily(FontFamily.Calibri),
    textWrapping: TextWrapping.WrapText,
    verticalAlign: VerticalAlign.Center,
    horizontalAlign: HorizontalAlign.Center,
    bold: true,
  );
  var cell = sheetObject.cell(CellIndex.indexByString("A1"));
  cell.value = "Total Balance";
  cell.cellStyle = cellStyle;
  var cell2 = sheetObject.cell(CellIndex.indexByString("B1"));
  cell2.value = totalBalance;
  cell2.cellStyle = cellStyle;
  sheetObject.appendRow(["", "", "", ""]);
  sheetObject.appendRow(["Income", "Amount"]);

  for (int i = 0; i < 2; i++) {
    sheetObject
        .cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: 2))
        .cellStyle = cellStyle;
  }

  List<List> incomeRow = [];
  List<List> expenseRow = [];

  incomeMaps.forEach((element) {
    incomeRow.add([element["income"], element["amount"]]);
  });
  incomeRow.forEach((element) {
    sheetObject.appendRow(element);
  });
  sheetObject.appendRow(["", "", "", ""]);
  sheetObject.appendRow(["Expense", "Amount"]);
  for (int i = 0; i < 2; i++) {
    sheetObject
        .cell(CellIndex.indexByColumnRow(
            columnIndex: i, rowIndex: 4 + incomeRow.length))
        .cellStyle = cellStyle;
  }

  expenseMaps.forEach((element) {
    expenseRow.add([element["expense"], element["amount"]]);
  });
  expenseRow.forEach((element) {
    sheetObject.appendRow(element);
  });

  if (kIsWeb) {
    List<int> data = excel.encode();

    js.context.callMethod("webSaveAs", [
      html.Blob([data]),
      '/Auto-works-report-${DateTime.now().toIso8601String()}.xlsx'
    ]);
  } else {
    final dir = await getApplicationDocumentsDirectory();
    String path = dir.path +
        '/Auto-works-report-${DateTime.now().toIso8601String()}.xlsx';
    List<int> data = excel.encode();
    File(join(path))
      ..createSync(recursive: true)
      ..writeAsBytesSync(data);

    OpenFile.open(path);
  }
}
