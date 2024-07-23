void main() async {
  try {
    var status = await getOrder(300);
    print(status);
  } catch (e) {
    print(e);
  }
  pertama();
  kedua();
}

void pertama() {
  print("Pertama");
}

void kedua() {
  print("Kedua");
}

// ASYNCRONUS DENGAN MENGGUNAKAN FUTURES !
Future<String> getOrder(int beli) {
  int stock = 5;

  return Future.delayed(Duration(seconds: 5), /* sebuah callback */ () {
    if (stock > beli) {
      return "Berhasil membeli sebanyak $beli";
    } else {
      throw "Gagal melakukan pembelian";
    }
  });
}
