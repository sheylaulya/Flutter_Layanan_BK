import 'dart:convert';
import 'package:http/http.dart' as http;

class API {
  postRequest({
    required String route,
    required Map<String, String> data,
  }) async {
    const String apiUrl = 'http://147.185.221.16:7471/api/auth';

    String url = apiUrl + route;

    return await http.post(
      Uri.parse(url),
      body: jsonEncode(data),
      headers: _header(),
    );
  }

  // getRequest({
  //   required String route,
  //   required Map<String, String> data,
  // }) async {
  //   const String apiUrl =
  //       'http://computer-armor.at.ply.gg:39438/api/siswa/{id}';

  //   String url = apiUrl + route;

  //   return await http.post(
  //     Uri.parse(url),
  //     body: jsonEncode(data),
  //     headers: _header(),
  //   );
  // }

  _header() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };

  // final String url = 'http://computer-armor.at.ply.gg:39438/api/siswa/{id}';

  // Future getsiswa() async {
  //   var response = await http.get(Uri.parse(url));
  //   print(json.decode(response.body));
  //   return json.decode(response.body);
  // }
}
