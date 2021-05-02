import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_change.dart';

class CounterTwo extends StatelessWidget {
  const CounterTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final watch = context.watch<CounterChange>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İkinci Sayfa',
        ),
      ),
      body: Center(
        child: Text(
          'Son güncel Counter değeri: ${watch.counter}',
        ),
      ),
    );
  }
}
