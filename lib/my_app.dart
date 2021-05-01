import 'package:flutter/material.dart';

import 'provider/persons_page.dart';
import 'provider/detail_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// [MaterialApp] widgeti:
    /// Uygulamayı en dıştan saran ve ana kapsayıcı widget'dır.
    /// Uygulama ana arayüzünün temeli burada atılır.
    return MaterialApp(
      /// [title] parametresi: "Uygulama Adı/Başlığı"
      title: 'Provider Course',

      /// [debugShowCheckedModeBanner] parametresi:
      /// Sağ üstte Debug adında bir etiket yer alır.
      /// Bu etiketi kaldırmak (false) / göstermek (true) için kullanılır.
      debugShowCheckedModeBanner: false,

      /// [theme] parametresi:
      /// Uygulamanın genel teması
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      /// [routes] parametresi:
      /// Adlandırılmış olan sayfaların Map halindeki listesi
      routes: {
        '/': (context) => PersonsPage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}
