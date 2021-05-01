import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'person.dart';

class PersonsPage extends StatelessWidget {
  /// Sınfın Constructor'ı (Kurucusu)
  const PersonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Persons Page / Kişiler Sayfası',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              /// Datayı isteyen ve kullanan/tüketen widgettir.
              /// Yeri: Olabildiğince widget ağacının derinine konulmalıdır.
              /// Ekrana widget çizer.
              /// Type belirtilmelidir. Burada type'mız Person'dır.
              child: Consumer<Person>(
                /// context:BuildContext
                /// state (model olarakta geçer): Person sınıfımızın kendisi
                /// child: rebuild edilmeyen child widget'ların yerine geçiyor
                builder: (context, state, child) {
                  return ListTile(
                    leading: Text('Id: ${state.id}'),
                    title: Text('Name: ${state.name}'),
                    subtitle: Text('User Name: ${state.username}'),
                    trailing: Text('Zip Code: \n${state.zipcode}'),
                  );
                },
              ),
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {
                /// MaterialApp widgetinin routes parametresinde tanımladığımı
                /// isimlendirilmiş rotalaradan olan [/detail]'a gider.
                Navigator.of(context).pushNamed('/detail');
              },
              child: Text(
                'Go to Detail Page / Detay Sayfasına Git',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
