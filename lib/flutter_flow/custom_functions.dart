import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double getIncome(List<IncomeRecord> amounts) {
  // Add your function code here!
  double amt = 0;
  for (int i = 0; i < amounts.length; i++) {
    amt += double.parse(amounts[i].amount);
  }
  return amt;
}

double getExpense(List<ExpenseRecord> amounts) {
  // Add your function code here!
  double amt = 0;
  for (int i = 0; i < amounts.length; i++) {
    amt += double.parse(amounts[i].amount);
  }
  return amt;
}

double total(
  double income,
  double expense,
) {
  // Add your function code here!
  return income - expense;
}
