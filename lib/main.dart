import 'package:flutter/material.dart';
import 'package:personal_expenses_app/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'Shoes', amount: 1500,date: DateTime.now()),
    Transaction(id: 't2', title: 'Groceries', amount: 355,date: DateTime.now()),
    Transaction(id: 't3', title: 'Stationery', amount: 150,date: DateTime.now()),
    Transaction(id: 't4', title: 'Jeans', amount: 1993,date: DateTime.now()),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.redAccent,
                  child: Text('Chart!'),
                elevation: 5,
              ),
            ),
            Card(
              child: Text('List of Tx'),
            )
          ],
        ));
  }
}
