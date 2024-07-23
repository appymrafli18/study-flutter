// implicit interface => implements
mixin Berlari {
  void hewanBerlari() => print("Hewan ini sedang berlari..");
}

mixin Berjalan {
  void hewanBerjalan() => print("Hewan ini sedang berjalan..");
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

// mixin [TIDAK MEMBUTUHKAN @override] => multiple inheritance
// minus nya mixin adalah DIA DI TUMPUK ! dan ini baru
// lebih worth it pake implements
class Kucing extends Animal with Berlari, Berjalan {
  late int jumlahKaki;
  late String ekor;

  Kucing(
      {required this.jumlahKaki,
      required this.ekor,
      required String nameKucing})
      : super(name: nameKucing, weight: 0, age: 1);
}

void main() {
  var chester = Kucing(jumlahKaki: 4, ekor: "1", nameKucing: "Chester");
  chester.hewanBerjalan();
  chester.hewanBerlari();
}
