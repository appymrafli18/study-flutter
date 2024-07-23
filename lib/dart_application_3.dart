// implicit interface => implements
class Berlari {
  void hewanBerlari() => print("Hewan ini sedang berlari..");
}

// Abstract [Gambaran Umum]
// tidak bisa di inisialisasi kan
abstract class Animal {
  late String name;
  late int weight;
  late int age;

  Animal({required this.name, required this.weight, required this.age});

  void eat(int weightFood) {
    weight += weightFood;
  }

  void sleep() {
    print("$name is Sleep right now!");
  }

  void pop(int weightPop) {
    weight -= weightPop;
  }
}

// implements [MEMBUTUHKAN @override] => multiple inheritance
class Kucing extends Animal implements Berlari {
  late int jumlahKaki;
  late String ekor;

  Kucing(
      {required this.jumlahKaki,
      required this.ekor,
      required String nameKucing})
      : super(name: nameKucing, weight: 0, age: 1);

  // @override => berfungsi agar di bagian implements bisa digunakan
  @override
  void hewanBerlari() => print("Hewan ini sedang berlari.. via [class kucing]");
}

void main() {
  var chester = Kucing(jumlahKaki: 4, ekor: "1", nameKucing: "Chester");
  chester.hewanBerlari();
  print(chester);
}
