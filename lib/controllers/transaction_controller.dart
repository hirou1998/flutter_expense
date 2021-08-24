import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_expense/models/transaction_model.dart';

class TransactionController extends GetxController {
  final TextEditingController title = TextEditingController();
  final TextEditingController amount = TextEditingController();

  final RxList<TransactionModel> transactions = [
    TransactionModel(
      id: 't1', 
      title: 'New Shoes', 
      amount: 69.99, 
      date: DateTime.now()
    ),
    TransactionModel(
      id: 't2', 
      title: 'Weekly Groceries', 
      amount: 16.53, 
      date: DateTime.now()
    )
  ].obs;

  void submit() {
    print(title.text);
    print(amount.text);
    createTransaction();
  }

  void createTransaction() {
    final newTransaction = TransactionModel(
      title: title.text,
      amount: double.parse(amount.text),
      date: DateTime.now(),
      id: DateTime.now().toString()
    );
    transactions.add(newTransaction);
  }
}