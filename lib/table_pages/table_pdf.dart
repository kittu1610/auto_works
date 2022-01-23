import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:universal_html/html.dart' as html;
import 'package:universal_html/js.dart' as js;
import 'package:universal_io/io.dart';

class TablePDF {
  TablePDF();

  Future<void> downloadPDF(Uint8List pdfData, String title) async {
    String fileName = "$title.pdf";
    if (kIsWeb) {
      js.context.callMethod("webSaveAs", [
        html.Blob([pdfData]),
        fileName
      ]);
    } else {
      final dir = await getApplicationDocumentsDirectory();
      String path = dir.path + '/$fileName';
      File(join(path))
        ..createSync(recursive: true)
        ..writeAsBytesSync(pdfData);
      OpenFile.open(path);
    }
  }

  String getDate() =>
      "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}";

  pw.Widget header(String text) {
    return pw.Padding(
      padding: const pw.EdgeInsets.all(8.0),
      child: pw.Text(
        text,
        style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold),
        textAlign: pw.TextAlign.center,
      ),
    );
  }

  pw.Widget footer(String text, {isRight = false}) {
    return pw.Padding(
      padding: const pw.EdgeInsets.all(8.0),
      child: pw.Text(
        text,
        style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold),
        textAlign: isRight ? pw.TextAlign.right : pw.TextAlign.center,
      ),
    );
  }

  pw.Widget bodyList(List<String> list, {isRight = false}) {
    return pw.Padding(
      padding: const pw.EdgeInsets.all(8),
      child: pw.Column(
        crossAxisAlignment:
            isRight ? pw.CrossAxisAlignment.end : pw.CrossAxisAlignment.start,
        children: List.generate(
            list.length, (index) => pw.Text(list.elementAt(index))),
      ),
    );
  }

  getIncomeExpenditurePdf(
    List<String> incomeDesc,
    List<String> incomeAmount,
    List<String> expenseDesc,
    List<String> expenseAmount,
    double totalIncome,
    double totalExpense,
  ) async {
    var pageTheme = pw.PageTheme(
      margin: pw.EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      pageFormat: PdfPageFormat.a4,
    );
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageTheme: pageTheme,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Padding(
              padding: const pw.EdgeInsets.all(16.0),
              child: pw.Column(
                children: [
                  header(
                      "INCOME AND EXPENDITURE ACCOUNT FOR THE YEAR ENDED ${getDate()}"),
                  pw.Table(
                    border: pw.TableBorder.all(),
                    // Allows to add a border decoration around your table
                    children: [
                      pw.TableRow(
                        children: [
                          header("EXPENDITURE"),
                          header("AMOUNT"),
                          header("INCOME"),
                          header("AMOUNT"),
                        ],
                      ),
                      pw.TableRow(
                        children: [
                          bodyList(expenseDesc),
                          bodyList(expenseAmount, isRight: true),
                          bodyList(incomeDesc),
                          bodyList(incomeAmount, isRight: true),
                        ],
                      ),
                      pw.TableRow(
                        children: [
                          footer("Total"),
                          footer("$totalExpense", isRight: true),
                          footer("Total"),
                          footer("$totalIncome", isRight: true),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ); // Center
        },
      ),
    );
    final savedPDF = await pdf.save();
    downloadPDF(savedPDF, "Income And Expenditure ${getDate()}");
  }

  getReceiptPaymentPdf(
    List<String> incomeDesc,
    List<String> lSubAmount,
    List<String> incomeAmount,
    List<String> expenseDesc,
    List<String> aSubAmount,
    List<String> expenseAmount,
    double totalIncome,
    double totalExpense,
  ) async {
    var pageTheme = pw.PageTheme(
      margin: pw.EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      pageFormat: PdfPageFormat.a4,
    );
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageTheme: pageTheme,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Padding(
              padding: const pw.EdgeInsets.all(16.0),
              child: pw.Column(
                children: [
                  header(
                      "RECEIPT AND PAYMENTS ACCOUNT FOR THE YEAR ENDED ${getDate()}"),
                  pw.Table(
                    border: pw.TableBorder.all(),
                    // Allows to add a border decoration around your table
                    children: [
                      pw.TableRow(
                        children: [
                          header("RECEIPT"),
                          header(" "),
                          header("AMOUNT"),
                          header("PAYMENTS"),
                          header(" "),
                          header("AMOUNT"),
                        ],
                      ),
                      pw.TableRow(
                        children: [
                          bodyList(incomeDesc),
                          bodyList(lSubAmount, isRight: true),
                          bodyList(incomeAmount, isRight: true),
                          bodyList(expenseDesc),
                          bodyList(aSubAmount, isRight: true),
                          bodyList(expenseAmount, isRight: true),
                        ],
                      ),
                      pw.TableRow(
                        children: [
                          footer("Total"),
                          footer(" "),
                          footer("$totalIncome", isRight: true),
                          footer("Total"),
                          footer(" "),
                          footer("$totalExpense", isRight: true),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ); // Center
        },
      ),
    );
    final savedPDF = await pdf.save();
    downloadPDF(savedPDF, "Receipt And Payment ${getDate()}");
  }
}
