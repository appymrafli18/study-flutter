class Animal {
  // LATE : mengecek datanya bener bener akan di isi
  // late String name;
  // late String jenis;
  // late int weight;

  // OPSIONAL TYPEDATA
  String? name;
  String? jenis;
  int? weight;

  // Positional Argument
  // Animal(this.name, this.jenis, this.weight);

  // Name Argument
  // Animal({required this.name, required this.jenis, required this.weight});

  // Name Argument With OPSIONAL TYPEDATA
  Animal({this.name, this.jenis, this.weight});

  // Method
  eat(int weightFood) {
    weight = weight! + weightFood;
  }

  pop(int weightPop) {
    if (weight! > 1) {
      weight = weight! - weightPop;
    } else {
      weight = 1;
    }
  }
}

void main() {
  var hewan1 = Animal(jenis: "Mamalia", name: "Anjing", weight: 8);

  print(hewan1.name);
  print("Kategori : ${hewan1.jenis}");
  print("Before Makan Berat : ${hewan1.weight} kg");

  hewan1.eat(2);

  print("After Makan Berat : ${hewan1.weight} kg");

  hewan1.pop(2);

  print("After Pop Berat : ${hewan1.weight} kg");

  print("=====================");
  var hewan2 = Animal(name: "Kucing", jenis: "Mamalia", weight: 4);

  print(hewan2.name);
  print("Kategori : ${hewan2.jenis}");
  print("Berat : ${hewan2.weight} kg");
}
