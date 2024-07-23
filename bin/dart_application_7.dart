import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  Uri url = Uri.parse(
      "https://http-request-dart-default-rtdb.asia-southeast1.firebasedatabase.app/people.json");

  await http.post(url,
      body: jsonEncode({
        "id": 2,
        "email": "diki@gmail.com",
        "namaLengkap": "Diki Ibrahim",
        "umur": 22,
        "berat": 78.2,
        "tinggi": 150.9,
        "foto":
            "https://cdn2.vectorstock.com/i/1000x1000/38/21/male-face-avatar-logo-template-pictograph-vector-11333821.jpg"
      }));

//   var response = await http.get(url);
//   var data = jsonDecode(response.body);
//   print(data);
}
