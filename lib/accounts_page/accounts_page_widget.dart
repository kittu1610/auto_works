import '../add_expense/add_expense_widget.dart';
import '../add_income/add_income_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../edit_expense/edit_expense_widget.dart';
import '../edit_income/edit_income_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsPageWidget extends StatefulWidget {
  const AccountsPageWidget({Key key}) : super(key: key);

  @override
  _AccountsPageWidgetState createState() => _AccountsPageWidgetState();
}

class _AccountsPageWidgetState extends State<AccountsPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.tertiaryColor,
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Welcome',
                  style: FlutterFlowTheme.title1.override(
                    fontFamily: 'Lexend Deca',
                    color: Color(0xFF090F13),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                  child: AuthUserStreamWidget(
                    child: Text(
                      valueOrDefault<String>(
                        currentUserDisplayName,
                        'user',
                      ),
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.primaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.tertiaryColor,
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                labelColor: FlutterFlowTheme.primaryColor,
                unselectedLabelColor: Color(0xFFCCCCCC),
                labelStyle: FlutterFlowTheme.title3.override(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ),
                indicatorColor: FlutterFlowTheme.primaryColor,
                tabs: [
                  Tab(
                    text: 'Income',
                  ),
                  Tab(
                    text: 'Expense',
                  ),
                  Tab(
                    text: 'Passbook',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: StreamBuilder<List<IncomeRecord>>(
                            stream: queryIncomeRecord(
                              queryBuilder: (incomeRecord) => incomeRecord
                                  .where('uid', isEqualTo: currentUserUid),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<IncomeRecord> listViewIncomeRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewIncomeRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewIncomeRecord =
                                      listViewIncomeRecordList[listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 8),
                                    child: Container(
                                      width: 100,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.tertiaryColor,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5,
                                            color: Color(0xFFCCCCCC),
                                            offset: Offset(0, 1),
                                            spreadRadius: 0,
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          setState(() =>
                                              FFAppState().editIncomeDate =
                                                  listViewIncomeRecord.date);
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditIncomeWidget(
                                                incomeRef: listViewIncomeRecord,
                                              ),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          title: Text(
                                            listViewIncomeRecord.category,
                                            style: FlutterFlowTheme.title3,
                                          ),
                                          subtitle: Text(
                                            dateTimeFormat('d/M/y',
                                                listViewIncomeRecord.date),
                                            style: FlutterFlowTheme.subtitle2,
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20,
                                          ),
                                          tileColor: Color(0xFFF5F5F5),
                                          dense: false,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.9, 1),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x00EEEEEE),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-0.15, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  setState(() => FFAppState().incomeDate =
                                      getCurrentTimestamp);
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AddIncomeWidget(),
                                    ),
                                  );
                                },
                                text: 'Add',
                                icon: Icon(
                                  Icons.add_rounded,
                                  color: FlutterFlowTheme.tertiaryColor,
                                  size: 30,
                                ),
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: FlutterFlowTheme.primaryColor,
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: StreamBuilder<List<ExpenseRecord>>(
                            stream: queryExpenseRecord(
                              queryBuilder: (expenseRecord) => expenseRecord
                                  .where('uid', isEqualTo: currentUserUid),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<ExpenseRecord> listViewExpenseRecordList =
                                  snapshot.data;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewExpenseRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewExpenseRecord =
                                      listViewExpenseRecordList[listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 8),
                                    child: Container(
                                      width: 100,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.tertiaryColor,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 5,
                                            color: Color(0xFFCCCCCC),
                                            offset: Offset(0, 1),
                                            spreadRadius: 0,
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          setState(() =>
                                              FFAppState().editExpenseDate =
                                                  listViewExpenseRecord.date);
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditExpenseWidget(
                                                expenseRef:
                                                    listViewExpenseRecord,
                                              ),
                                            ),
                                          );
                                        },
                                        child: ListTile(
                                          title: Text(
                                            listViewExpenseRecord.category,
                                            style: FlutterFlowTheme.title3,
                                          ),
                                          subtitle: Text(
                                            dateTimeFormat('d/M/y',
                                                listViewExpenseRecord.date),
                                            style: FlutterFlowTheme.subtitle2,
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20,
                                          ),
                                          tileColor: Color(0xFFF5F5F5),
                                          dense: false,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 8, 8, 8),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.9, 1),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x00EEEEEE),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-0.15, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  setState(() => FFAppState().expenseDate =
                                      getCurrentTimestamp);
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AddExpenseWidget(),
                                    ),
                                  );
                                },
                                text: 'Add',
                                icon: Icon(
                                  Icons.add_rounded,
                                  color: FlutterFlowTheme.tertiaryColor,
                                  size: 30,
                                ),
                                options: FFButtonOptions(
                                  width: 130,
                                  height: 40,
                                  color: FlutterFlowTheme.primaryColor,
                                  textStyle:
                                      FlutterFlowTheme.subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    StreamBuilder<List<IncomeRecord>>(
                      stream: queryIncomeRecord(
                        queryBuilder: (incomeRecord) => incomeRecord
                            .where('uid', isEqualTo: currentUserUid),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                          );
                        }
                        List<IncomeRecord> containerIncomeRecordList =
                            snapshot.data;
                        return Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0x00EEEEEE),
                          ),
                          child: StreamBuilder<List<ExpenseRecord>>(
                            stream: queryExpenseRecord(
                              queryBuilder: (expenseRecord) => expenseRecord
                                  .where('uid', isEqualTo: currentUserUid),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: CircularProgressIndicator(
                                      color: FlutterFlowTheme.primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<ExpenseRecord> containerExpenseRecordList =
                                  snapshot.data;
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.tertiaryColor,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 20),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFFF5F5F5),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 20, 20, 20),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: Text(
                                                    'Total Income Balance',
                                                    style:
                                                        FlutterFlowTheme.title2,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 4, 0, 0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      functions
                                                          .getIncome(
                                                              containerIncomeRecordList
                                                                  .toList())
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme
                                                        .title1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.black,
                                                      fontSize: 32,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 20),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Color(0xFFF5F5F5),
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 20, 20, 20),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: Text(
                                                    'Total Expense Balance',
                                                    style:
                                                        FlutterFlowTheme.title2,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 4, 0, 0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      functions
                                                          .getExpense(
                                                              containerExpenseRecordList
                                                                  .toList())
                                                          .toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme
                                                        .title1
                                                        .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.black,
                                                      fontSize: 32,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          color: Color(0x00EEEEEE),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 20),
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0xFFF5F5F5),
                                            elevation: 4,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 20, 20, 20),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 0, 0, 0),
                                                    child: Text(
                                                      'Total Balance',
                                                      style: FlutterFlowTheme
                                                          .title2,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 0, 0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        functions
                                                            .total(
                                                                functions.getIncome(
                                                                    containerIncomeRecordList
                                                                        .toList()),
                                                                functions.getExpense(
                                                                    containerExpenseRecordList
                                                                        .toList()))
                                                            .toString(),
                                                        '0.0',
                                                      ),
                                                      style: FlutterFlowTheme
                                                          .title1
                                                          .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 32,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 16, 0, 16),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await actions.download(
                                                containerIncomeRecordList
                                                    .toList(),
                                                containerExpenseRecordList
                                                    .toList(),
                                              );
                                            },
                                            text: 'Income',
                                            icon: Icon(
                                              Icons.file_download,
                                              size: 15,
                                            ),
                                            options: FFButtonOptions(
                                              width: 140,
                                              height: 60,
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              textStyle: FlutterFlowTheme.title3
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                              elevation: 2,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 2,
                                              ),
                                              borderRadius: 8,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
