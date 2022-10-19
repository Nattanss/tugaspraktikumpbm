Future<void> main(List<String> args) async {
  //List
  List matkul = List.filled(5, 0);
  matkul[0] = 'matematika dasar';
  matkul[1] = 'kalkulus';
  matkul[2] = 'data mining';
  matkul[3] = 'bahasa inggris';
  matkul[4] = 'agama';
  print(matkul);
  print(matkul[0]);

  //map
  Map kamus = {};
  kamus['makan'] = 'eat';
  kamus['haus'] = 'thirsty';
  kamus['lapar'] = 'hungry';
  print(kamus);

  //Set
  Set<String> buah = {"apel", "jeruk", "anggur"};
  print("buah : $buah");
}
