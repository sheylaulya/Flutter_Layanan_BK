import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Siswa {
  late int id;
  late int userId;
  late String nama;
  late int nisn;
  late String tanggalLahir;
  late String kelamin;
  late int kelasId;
  late String telepon;
  late DateTime createdAt;
  late DateTime updatedAt;
}

Future<Siswa> fetchDataSiswaByIdWithSP() async {
  SharedPreferences sp = await SharedPreferences.getInstance();

  int? id = sp.getInt('user_id') ?? 1;

  String urlLocal = "http://testing-manner.at.ply.gg:44886/api/siswa/$id";

  Siswa siswa = Siswa();

  var result = await http.get(Uri.parse(urlLocal));

  if (result.statusCode == 200) {
    var data = json.decode(result.body);

    siswa.id = data['id'];
    siswa.userId = data['user_id'];
    siswa.nama = data['nama'];
    siswa.nisn = data['nisn'];
    siswa.tanggalLahir = data['tanggal_lahir'];
    siswa.kelamin = data['kelamin'];
    siswa.kelasId = data['kelas_id'];
    siswa.telepon = data['telepon'];
  }

  return siswa;
}
