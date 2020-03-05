import 'package:flutter/material.dart';
import 'package:medical_try/transaction.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: '1', title: 'A boat', amount: 200.12, date: DateTime.now()),
    Transaction(
        id: '2', title: 'Mclaren 720s', amount: 20000, date: DateTime.now()),
    Transaction(
        id: '3', title: 'paine stricata', amount: 10, date: DateTime.now()),
  ];

  String titleInput;
  String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bogatie-smecherie'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              child: Text('Chart'),
            ),
            elevation: 5,
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    onChanged: (value) {
                      titleInput = value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    onChanged: (value) {
                      amountInput = value;
                    },
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.purple,
                    onPressed: () {
                      
                    },
                  )
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 50,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$ ${tx.amount.toString()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(tx.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
