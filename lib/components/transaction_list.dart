import 'package:flutter/material.dart';
import 'package:flutter_expense/models/transaction_model.dart';
import 'package:flutter_expense/components/transaction_item.dart';
import 'package:get/get.dart';

class TransactionList extends StatelessWidget {
  TransactionList({required this.transactions});

  final List<TransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map(
        (TransactionModel transaction) => 
          Obx(() => TransactionItem(transaction: transaction))
        ).toList()
    );
  }
}