import 'package:flutter/material.dart';

/// [1. ADım]
///   Sınıfı ChangeNotifier'ten extends et yada with'le.
/// class CounterChange extends ChangeNotifier {}
class CounterChange with ChangeNotifier {
  /// [1] Değişimini izleyeceğimiz değişkeni tanımladık
  /// ve bir başlangıç değeri verdi
  /// Tanımlanan [_counter] değişkenine doğrudan erişimi engelledik.
  /// Bu değişkeni sadece bu sınıfta kullanılabilir.
  int _counter = 0;

  /// Sarmalama/Kapsülleme (Encapsulation): (Getter-Setter işlemleri)
  /// Sınıf içindeki metotlara ve özelliklere erişimleri
  /// kısıtlamak/sınırlandırmak için kullanılır

  /// [2-A] Getter işlemi:(Bilgiyi getir)
  /// Get metodu return ile bir değer döndürür.
  /// Bu sayede [_counter] değişkeninin değerine ulaşabiliriz.
  /// Böylece sınıf dışından bu değere [counter] ile erişilebiliriz.
  int get counter => _counter;

  /// [2-B] Setter işlemi: (Bilgiyi değiştir)
  /// Set metodu return dönmez fakat parametre alır.
  /// Bu parametreye verdiğimiz değer ile mevcut olan değeri değiştirebiliriz.
  set setCounter(int newCounter) {
    /// Girilen ile Görünen değer aynı ise notifyListeners çalışmasın.
    if (newCounter == _counter) {
      debugPrint('$_counter değeri zaten sıfıra eşit.');
      return;
    }

    _counter = newCounter;

    /// [state]'in güncellenmesi için
    /// [notifyListeners()] metodunu çağırdık.
    notifyListeners();

    /// [debugPrint]: Değişiklikleri sadece debug ortamında
    /// Debug Console'a yazdırması için kullandık
    debugPrint('Sayı sıfırlandı. Son değeri: $_counter');
  }

  /// Metotlar:
  /// [3-A]: Sayıyı 1 Arttır metodu
  void incrementCounter() {
    _counter++;
    notifyListeners();
    debugPrint('Sayı bir arttırıldı. Son değeri: $_counter');
  }

  /// [3-B]: Sayıyı 1 Azalt metodu
  void decrementCounter() {
    _counter--;
    notifyListeners();
    debugPrint('Sayı bir azaltıldı. Son değeri: $_counter');
  }
}
