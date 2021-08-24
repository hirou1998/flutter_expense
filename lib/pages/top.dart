import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_expense/controllers/transaction_controller.dart';
import 'package:flutter_expense/components/transaction_list.dart';
import 'package:flutter_expense/components/new_transaction.dart';

class TopPage extends StatelessWidget {
  final TransactionController transactionController 
    = Get.put(TransactionController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const SizedBox(
          width: double.infinity,
          child: Card(
            elevation: 5,
            child: Text('Chart'),
          ),
        ),
        NewTransaction(),
        Obx(() => 
          TransactionList(transactions: transactionController.transactions)
        )
      ],
    );
  }
}