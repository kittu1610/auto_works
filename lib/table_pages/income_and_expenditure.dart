import 'package:auto_works/backend/backend.dart';
import 'package:auto_works/table_pages/table_pdf.dart';
import 'package:flutter/material.dart';

class IncomeAndExpenditure extends StatelessWidget {
  IncomeAndExpenditure({Key key, @required this.income, @required this.expense})
      : super(key: key);

  final List<IncomeRecord> income;
  final List<ExpenseRecord> expense;

  Widget header(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget footer(String text, {isRight = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        textAlign: isRight ? TextAlign.right : TextAlign.center,
      ),
    );
  }

  Widget bodyList(List<String> list, {isRight = false}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment:
            isRight ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children:
            List.generate(list.length, (index) => Text(list.elementAt(index))),
      ),
    );
  }

  String getDate() =>
      "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}";

  final List<String> incomeDesc = [];
  final List<String> incomeAmount = [];
  final List<String> expenseDesc = [];
  final List<String> expenseAmount = [];

  @override
  Widget build(BuildContext context) {
    var totalIncome = 0.0;
    var totalExpense = 0.0;
    for (int i = 0; i < income.length; i++) {
      incomeDesc.add(income[i].description.toString());
      incomeAmount.add(income[i].amount.toString());
      totalIncome += double.parse(income[i].amount);
    }
    for (int i = 0; i < expense.length; i++) {
      expenseDesc.add(expense[i].description.toString());
      expenseAmount.add(expense[i].amount.toString());
      totalExpense += double.parse(expense[i].amount);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Income And Expenditure"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          TablePDF tablePDF = TablePDF();
          tablePDF.getIncomeExpenditurePdf(incomeDesc, incomeAmount,
              expenseDesc, expenseAmount, totalIncome, totalExpense);
        },
        label: Text("Download"),
        icon: Icon(Icons.download),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              header(
                  "INCOME AND EXPENDITURE ACCOUNT FOR THE YEAR ENDED ${getDate()}"),
              Table(
                border: TableBorder.all(),
                // Allows to add a border decoration around your table
                children: [
                  TableRow(
                    children: [
                      header("EXPENDITURE"),
                      header("AMOUNT"),
                      header("INCOME"),
                      header("AMOUNT"),
                    ],
                  ),
                  TableRow(
                    children: [
                      bodyList(expenseDesc),
                      bodyList(expenseAmount, isRight: true),
                      bodyList(incomeDesc),
                      bodyList(incomeAmount, isRight: true),
                    ],
                  ),
                  TableRow(
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
      ),
    );
  }
}
