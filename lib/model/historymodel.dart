import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class History {
  late String guru_bk;
  late String wali_kelas;
  late String jenis_layanan;
  late String siswa_konseling;
  late String topik;
  late String tanggal;
  late String jam_mulai;
  late String jam_berakhir;
  late String tempat;
  late String? hasil = '';
  late String status;
}

Future<List<History>> getHistory() async {
  List<History> histories = [];
  SharedPreferences sp = await SharedPreferences.getInstance();

  int? id = sp.getInt('user_id') ?? 1;

  print(id);

  String urlLocal = "http://testing-manner.at.ply.gg:44886/api/history/$id";

  var result = await http.get(Uri.parse(urlLocal));

  if (result.statusCode == 200) {
    var data = json.decode(result.body);

    print(data);

    for (var item in data) {
      History history = History();

      history.guru_bk = item['guru_bk'];
      history.wali_kelas = item['wali_kelas'];
      history.jenis_layanan = item['jenis_layanan'];
      history.siswa_konseling = item['siswa_konseling'];
      history.topik = item['topik'];
      history.tanggal = item['tanggal'];
      history.jam_mulai = item['jam_mulai'];
      history.jam_berakhir = item['jam_berakhir'];
      history.tempat = item['tempat'];
      history.hasil = item['hasil'];
      history.status = item['status'];

      histories.add(history);
    }
  }

  return histories;
}
