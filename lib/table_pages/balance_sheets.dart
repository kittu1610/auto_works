import 'package:flutter/material.dart';

class BalanceSheets extends StatelessWidget {
  BalanceSheets({Key key}) : super(key: key);

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

  final List<String> liabilities = ["cap fund", "add excess", "suspense"];
  final List<String> lSubAmount = ["1111", "2222", "3333"];
  final List<String> lAmount = ["4444"];
  final List<String> assets = ["cap fund", "add excess", "suspense"];
  final List<String> aSubAmount = ["1111", "2222", "3333"];
  final List<String> aAmount = ["4444"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BalanceSheets"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              header("BALANCE SHEET AS ON ${getDate()}"),
              Table(
                border: TableBorder.all(),
                // Allows to add a border decoration around your table
                children: [
                  TableRow(
                    children: [
                      header("LIABILITIES"),
                      header(" "),
                      header("AMOUNT"),
                      header("ASSETS"),
                      header(" "),
                      header("AMOUNT"),
                    ],
                  ),
                  TableRow(
                    children: [
                      bodyList(liabilities),
                      bodyList(lSubAmount, isRight: true),
                      bodyList(lAmount, isRight: true),
                      bodyList(assets),
                      bodyList(aSubAmount, isRight: true),
                      bodyList(aAmount, isRight: true),
                    ],
                  ),
                  TableRow(
                    children: [
                      footer("Total"),
                      footer(" "),
                      footer("224224", isRight: true),
                      footer("Total"),
                      footer(" "),
                      footer("224224", isRight: true),
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
