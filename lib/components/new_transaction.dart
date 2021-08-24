import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_expense/controllers/transaction_controller.dart';

class NewTransaction extends StatelessWidget {
  
  final TransactionController _transactionController
     = Get.put(TransactionController());

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Title'
              ),
              controller: _transactionController.title
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Amount'
              ),
              controller: _transactionController.amount
            ),
            TextButton(
              onPressed: _transactionController.submit, 
              child: const Text(
                'Add Transaction',
                style: TextStyle(
                  fontSize: 12
                ),
              )
            )
          ],
        )
      )
    );
  }
}