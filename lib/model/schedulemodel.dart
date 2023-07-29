import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Schedule {
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

Future<List<Schedule>> getSchedule() async {
  List<Schedule> schedules = [];
  SharedPreferences sp = await SharedPreferences.getInstance();

  int? id = sp.getInt('user_id') ?? 1;

  print(id);

  String urlLocal = "http://testing-manner.at.ply.gg:44886/api/schedule/$id";

  var result = await http.get(Uri.parse(urlLocal));

  if (result.statusCode == 200) {
    var data = json.decode(result.body);

    print(data);

    for (var item in data) {
      Schedule schedule = Schedule();

      schedule.guru_bk = item['guru_bk'];
      schedule.wali_kelas = item['wali_kelas'];
      schedule.jenis_layanan = item['jenis_layanan'];
      schedule.siswa_konseling = item['siswa_konseling'];
      schedule.topik = item['topik'];
      schedule.tanggal = item['tanggal'];
      schedule.jam_mulai = item['jam_mulai'];
      schedule.jam_berakhir = item['jam_berakhir'];
      schedule.tempat = item['tempat'];
      schedule.hasil = item['hasil'];
      schedule.status = item['status'];

      schedules.add(schedule);
    }
  }

  return schedules;
}
