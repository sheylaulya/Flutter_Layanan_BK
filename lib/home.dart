import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_layanan_bk/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences preferences;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  void getUserData() async {
    setState(() {
      isLoading = true;
    });
    preferences = await SharedPreferences.getInstance();
    setState(() {
      isLoading = false;
    });
  }

  void logout() {
    preferences.clear();
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const LoginPage(),
    ));
  }

  Future<List<dynamic>> _fetchData() async {
    final response =
        await http.get(Uri.parse("http://147.185.221.16:7471/api/quotes"));
    if (response.statusCode == 200) {
      // Mengonversi respons JSON menjadi List of Maps
      return json.decode(response.body);
    } else {
      throw Exception("Gagal mengambil data dari API");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: _fetchData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text("Error: ${snapshot.error}"),
          );
        } else {
          // Jika data berhasil diambil, tampilkan ListView untuk menampilkan data
          List<dynamic>? data = snapshot.data;
          // ... (other code remains the same) ...

          return Scaffold(
            backgroundColor: const Color(0xffB3D5FF),
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hi ! Welcome',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        isLoading
                            ? const CircularProgressIndicator()
                            : Text(
                                preferences.getString('name').toString(),
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff0A2647),
                                  ),
                                ),
                              ),
                      ],
                    ),
                    Text(
                      'What can i do for you today?',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Image(
                      image: AssetImage('assets/img/home.png'),
                      width: 220,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 35, right: 35),
                      width: double.infinity,
                      height: 500,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Motivation Quotes For You',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff85B5ED),
                                ),
                              ),
                            ),
                            Expanded(
                              // Wrap ListView.builder with Expanded
                              child: ListView.builder(
                                itemCount: data != null ? data.length : 0,
                                itemBuilder: (context, index) {
                                  var itemData = data![index];
                                  return Container(
                                    padding: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color(0xff85B5ED).withOpacity(0.5)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${itemData["guru_bk_id"]}",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(itemData["quotes"],  style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                            ),
                                          ),),
                                      ],

                                      // Tambahkan ikon, aksi, atau elemen lain sesuai kebutuhan
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          );

          // return Scaffold(
          //   backgroundColor: const Color(0xffB3D5FF),
          //   body: Column(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //
          //
          //           const SizedBox(
          //             height: 10,
          //           ),
          //           const Image(
          //             image: AssetImage('assets/img/home.png'),
          //             width: 220,
          //           ),
          //           const SizedBox(
          //             height: 10,
          //           ),
          //           Container(
          //             padding:
          //                 const EdgeInsets.only(top: 20, left: 35, right: 35),
          //             width: double.infinity,
          //             height: 500,
          //             decoration: const BoxDecoration(
          //               color: Colors.white,
          //               borderRadius: BorderRadius.only(
          //                 topLeft: Radius.circular(50),
          //                 topRight: Radius.circular(50),
          //               ),
          //             ),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   'Motivation Quotes For You',
          //                   style: GoogleFonts.poppins(
          //                     textStyle: const TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w700,
          //                       color: Color(0xff85B5ED),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //           const SizedBox(
          //             height: 10,
          //           ),
          //         ],
          //       ),
          //       Expanded(
          //         child: ListView.builder(
          //           itemCount: data != null ? data.length : 0,
          //           itemBuilder: (context, index) {
          //             var itemData = data![index];
          //             return ListTile(
          //               title: Text("Nama Guru: ${itemData["guru_bk_id"]}"),
          //               subtitle: Text(itemData["quotes"]),
          //               // Tambahkan ikon, aksi, atau elemen lain sesuai kebutuhan
          //             );
          //           },
          //         ),
          //       ),
          //     ],
          //   ),
          // );
        }
      },
    );
  }
}
