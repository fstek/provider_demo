import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'person.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Burada Consumer yerine
    /// [context.watch<T>] yada [Provider.of<T>(context, listen: true)] kullandık.
    /// Aşağıdaki iki şekilde kullanılabilir.
    /// Bunlar bulundukları widgeti bir Consumer widget yapar.
    /// Her değişiklikte o widget rebuild (listen:true olduğu için) olur.
    final state = context.watch<Person>();
    //final state = Provider.of<state>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Page / Detay Sayfası',
        ),
      ),
      body: Center(
        child: Card(
          child: ListView(
            padding: EdgeInsets.all(15),
            children: [
              Text('Id: ${state.id}'),
              Divider(),
              Text('Name: ${state.name}'),
              Divider(),
              Text('User Name: ${state.username}'),
              Divider(),
              Text('Email: ${state.email}'),
              Divider(),
              Text('Phone: ${state.phone}'),
              Divider(),
              Text('Website: ${state.website}'),
              Divider(),
              Text('Zip Code: ${state.zipcode}'),
              Divider(),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Go to Home Page / Ana Sayfaya Git',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
