// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:mobile_layanan_bk/model/siswamodel.dart';

// class Repository {
//   final _baseUrl = 'http://computer-armor.at.ply.gg:39438/api/siswa';

//   Future getSiswa() async {
//     try {
//       final response = await http.get(Uri.parse(_baseUrl));

//       if (response.statusCode == 200) {
//         Iterable it = jsonDecode(response.body);
//         List<Siswa> siswa = it.map((e) => Siswa.fromJson(e)).toList();
//         return siswa;
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }
