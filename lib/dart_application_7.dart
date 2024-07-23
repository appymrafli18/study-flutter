class Person {
  int? id = 1;
  String? email;
  String? namaLengkap;
  int? age;
  double? weight;
  double? height;
  String? foto;

  Person(
      {this.id,
      this.email,
      this.namaLengkap,
      this.age,
      this.weight,
      this.height,
      this.foto});

  Person.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    namaLengkap = json['namaLengkap'];
    age = json['age'];
    weight = json['weight'];
    height = json['height'];
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> datas = <String, dynamic>{};
    datas['id'] = id;
    datas['email'] = email;
    datas['namaLengkap'] = namaLengkap;
    datas['age'] = age;
    datas['weight'] = weight;
    datas['height'] = height;
    datas['foto'] = foto;
    return datas;
  }
}

void main() {
  List<Map<String, dynamic>> dataDariDatabase = [
    {
      "id": 1,
      "email": "joni@gmail.com",
      "namaLengkap": "Joni Taban",
      "umur": 35,
      "berat": 67.8,
      "tinggi": 170.2,
      "foto":
          "https://cdn2.vectorstock.com/i/1000x1000/38/21/male-face-avatar-logo-template-pictograph-vector-11333821.jpg"
    },
    {
      "id": 2,
      "email": "diki@gmail.com",
      "namaLengkap": "Diki Ibrahim",
      "umur": 22,
      "berat": 78.2,
      "tinggi": 150.9,
      "foto":
          "https://cdn2.vectorstock.com/i/1000x1000/38/21/male-face-avatar-logo-template-pictograph-vector-11333821.jpg"
    }
  ];

  Person orangKedua = Person.fromJson(dataDariDatabase[1]);
  print(orangKedua.toJson());
}
