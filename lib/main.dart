import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_expense/pages/top.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app'),
      ),
      body: TopPage()
    );
  }
}