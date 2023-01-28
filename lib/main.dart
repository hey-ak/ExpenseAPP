import 'package:expenseapp/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Transaction> transaction = [
    Transaction(
      id: "1",
      title: "Shoes",
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Specs",
      amount: 29.99,
      date: DateTime.now(),
    ),
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
          Card(
            color: Colors.blue,
            child: Container(width: double.infinity, child: Text("Chart")),
          ),
          Column(
            children: transaction.map((txt) {
              return Card(
                  child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.purple),
                    ),
                    child: Text(
                      
                      txt.amount.toString(),
                      
                      style:TextStyle(fontWeight:FontWeight.bold, 
                      color: Colors.purple,
                      fontSize: 20)
                      ,
                      ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        
                        txt.title,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(txt.date.toString(),
                      style:const  TextStyle(color: Colors.grey)),
                    ],
                  )
                ],
              ));
            }).toList(),
          )
        ],
      ),
    );
  }
}
