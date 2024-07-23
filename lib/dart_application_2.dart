class Animal {
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

// INHERINTENCE
class Darat extends Animal {
  late int jumlahKaki;

  // Darat(this.jumlahKaki);

  // constructor with inheritance
  // MELEMPAR DENGAN MENGGUNAKAN SUPER KE PARENT
  Darat(
      {required String nameDarat,
      required int weigthDarat,
      required int ageDarat,
      required this.jumlahKaki})
      : super(age: ageDarat, name: nameDarat, weight: weigthDarat);

  void walk(int countWalk) {
    print("Berjalan dengan Kecepatan $countWalk km/h");
  }
}

class Udara {
  late int jumlahSayap;

  Udara(this.jumlahSayap);

  void fly(int countFly) {
    print("Terbang dengan kecepatan $countFly km/h");
  }
}

void main() {
  // cascade notation
  // var hewan1 = Animal(jenis: "Mamalia", weight: 8)
  // ..name = "Anjing"
  // ..weight = 100;

  // Animal kucing = Animal(name: "Kucing", weight: 15, age: 5);

  var anjing =
      Darat(nameDarat: "Anjing", weigthDarat: 12, ageDarat: 6, jumlahKaki: 4);

  print(anjing.name);
  print(anjing.weight);
  print(anjing.age);
  print(anjing.jumlahKaki);
}
