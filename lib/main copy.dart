import 'package:flutter/material.dart';
import 'package:practice_someprincipe/countwidget.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

void main() => runApp(ChangeNotifierProvider<CounterProvider>(
      create: (_) => CounterProvider(),
      child: MaterialApp(
        home: Counter(),
      ),
    ));

int c = 0;
int n = 0;

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context, listen: false);

    print("${n++}");

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => count.counter(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "test 1",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            counterwidget(),
            SizedBox(
              height: 5,
            ),
            Text(
              "test 3",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "test 4",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
