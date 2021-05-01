/// [1. Adım]: Model Sınfımız
class Person {
  const Person({
    this.id = 1,
    this.name = 'Leanne Graham',
    this.username = 'Bret',
    this.email = 'Sincere@april.biz',
    this.phone = '1-770-736-8031 x56442',
    this.website = 'hildegard.org',
    this.zipcode = '92998-3874',
  });
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final String zipcode;
}
