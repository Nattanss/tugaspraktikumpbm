Future<void> main(List<String> args) async {
  var ipk = 3;
  var matkul = "Tidak mengulang";
  if (ipk >= 3.5 && matkul == "Tidak Mengulang") {
    print("Cumlaude");
  } else if (ipk <= 3.5) {
    print("Tidak Cumlaude");
  }
}
