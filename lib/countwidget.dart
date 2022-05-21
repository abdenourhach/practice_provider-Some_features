import 'package:flutter/material.dart';
import 'package:practice_someprincipe/counter_provider.dart';
import 'package:provider/provider.dart';

class counterwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context);

    return Text(
      "${count.c}",
      style: TextStyle(fontSize: 20),
    );
  }
}
