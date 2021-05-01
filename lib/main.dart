import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_app.dart';
import 'provider/person.dart';

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
      /// Not: Burada kullandığımız Provider datadaki değişiklikleri
      /// dinlemediği için herhangi bir değişiklikte UI güncellemez.
      /// UI'ı güncellemek için bir sonraki örnekte ChangeNotifierProvider kullanılacaktır.
      Provider(
        /// Providerın datayı sağladığı yer Person model sınıfı
        create: (context) => Person(),

        /// Okunurlık açısından MyApp'i ayrı bir dart dosyasından oluşturduk
        child: MyApp(),
      ),
    );
