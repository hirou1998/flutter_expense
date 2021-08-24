import 'package:flutter/material.dart';
import 'package:flutter_expense/models/transaction_model.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({required this.transaction});

  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transaction.title,
                    style: const TextStyle(
                      fontSize: 16
                    )
                  ),
                  const SizedBox(height: 6),
                  Text(
                    DateFormat('yyyy/MM/dd hh:mm:ss').format(transaction.date),
                    style: const TextStyle(
                      color: Color(0xff969696),
                      fontSize: 10
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              child: Text(
                '\$${transaction.amount}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}