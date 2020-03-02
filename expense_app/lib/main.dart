import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final List<Transaction> transaction = [
    Transaction(id: 't1', title: 'New shoes', amount: 70.00, date: DateTime.now()),
    Transaction(id: 't1', title: 'New pants', amount: 20.00, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense App'),
        ),
        body: Column(
          mainAxisAlignment:  MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART'),
                elevation: 5,
                
              ),
            ),
            Column(
              children: transaction.map(
                (tx){
                  return Card(child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15,),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black, 
                            width: 2,
                          ),
                          color: Colors.amberAccent,
                          ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$${tx.amount}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
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
                            ),
                          ),
                          Text(tx.date.toString(),
                            style: TextStyle( 
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  );
                }
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
