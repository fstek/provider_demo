import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_app.dart';
import 'counter/counter_change.dart';

/// [main()] metodu:
/// Uygulama çalıştırılacağı zaman Flutter ilk olarak bu metodu bulur
/// ve uygulama buradan çalışır.
/// Uygulama da tek bir tane main() metodu vardır.

/// [void] ön eki:
/// main() metodunun herhangi bir değer döndürmediğini ifade eder.
void main() => runApp(
      /// [2. Adım]: Uygulamaya Data Sağlama
      /// Provider paketinden gelen bir tür olan Provider'ı
      /// Widget Ağacımıza (widget tree) enjekte ediyoruz.
      /// Neden buraya ekledik?: Ona erişmesi gereken widgetlerin üstünde bulunmalıdır.
      /// Burada uygulamanın en üstünde MyApp widgeti yer aldığı için MyApp widgetini sardık.
      /// Böylece MyApp'ın altındaki tüm widgetlerden enjekte ettiğimiz bu Provider değerine ulaşabiliriz.

      /// [ChangeNotifierProvider]:
      /// ChangeNotifier nesnesi (instance) sağlayan bir widget’tır.
      /// Provider paketinden gelir.
      /// Datadaki değişiklikleri dinler ve değişen dataya erişim sağlar.
      /// Herhangi bir değişiklikte UI'ı günceller.
      /// Datayı sağladığı yer [CounterChange]'tır ve <type> olarak belirtilmelidir.
      ChangeNotifierProvider<CounterChange>(
        /// Yeni bir [CounterChange] nesnesi  ChangeNotifierProvider
        /// tarafından rebuild edilmez. (yeniden oluşturmaz)
        /// Nesneye ihtiyaç duyulmadığında dispose() metodunu çağırır.
        create: (context) => CounterChange(),

        /// Okunurluk açısından MyApp'i ayrı bir dart dosyasından oluşturduk
        child: MyApp(),
      ),
    );
