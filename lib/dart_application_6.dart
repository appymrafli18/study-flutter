enum JENISKELAMIN { LAKI, PEREMPUAN }

void main() {
  // enum -> with bool
  // true => Laki2
  // False => Perempuan
  // bool jk = true;

  // if (jk == true) {
  //   print("Laki Laki");
  // } else {
  //   print("Perempuan");
  // }

  JENISKELAMIN jeniskelamin = JENISKELAMIN.LAKI;

  if (jeniskelamin == JENISKELAMIN.LAKI) {
    print("Laki Laki");
  } else {
    print("Perempuan");
  }
}
