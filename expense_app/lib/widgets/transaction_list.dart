import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';


class TransactionList extends StatelessWidget {
  @override

  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, 
      child:  ListView(
              children: transactions.map(
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
                          Text(DateFormat().format(tx.date),
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
      );
  }
}