import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_change.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// [1] Değişkenlere erişim için
    /// [listen: true]: Rebuild için
    final _watch = Provider.of<CounterChange>(context, listen: true);

    /// Yıkarıdaki kullanımın alternatif olarak aşağıdaki tercih edilebilir:
    /// final _watch = context.watch<CounterChange>();

    /// [2] Metotlara erişim için
    /// [listen: false]: Sürekli rebuild olmasın diye.
    /// Zaten true olursa hata verecektir.
    final _read = Provider.of<CounterChange>(context, listen: false);

    /// Yıkarıdaki kullanımın alternatif olarak aşağıdaki tercih edilebilir:
    /// var _read = context.read<CounterChange>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter App ChangeNotifierProvider',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

            /// [2]
            Text(
              /// [5]
              '${_watch.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/two');
              },
              child: Text('Bir Sonraki Sayfaya Git'),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: FloatingActionButton(
              /// [6]: Arttır
              heroTag: 'incrementTag',
              onPressed: _read.incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: FloatingActionButton(
              /// [7]: Sıfırla
              heroTag: 'resetTag',
              onPressed: () {
                _watch.setCounter = 0;
              },
              tooltip: 'reset',
              child: Icon(Icons.exposure_zero_sharp),
            ),
          ),
          FloatingActionButton(
            /// [8]: Azalt
            heroTag: 'decrementTag',
            onPressed: _read.decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
