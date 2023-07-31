import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_layanan_bk/model/historymodel.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:crea_radio_button/crea_radio_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Historypage extends StatefulWidget {
  const Historypage({super.key});

  @override
  State<Historypage> createState() => _HistorypageState();
}

class _HistorypageState extends State<Historypage> {
  String label = "";
  List<RadioOption> options = [
    RadioOption("MONTHLY", "Private"),
    RadioOption("YEARLY", "Study"),
    RadioOption("ADO", "Social"),
    RadioOption("ADOH", "Career")
  ];

  List Histories = [];
  void fetchdatahistory() async {
    List<History> histories = [];
    SharedPreferences sp = await SharedPreferences.getInstance();

    String urlLocal = "http://147.185.221.16:7471/api/history";

    var result = await http.get(Uri.parse(urlLocal));

    if (result.statusCode == 200) {
      var data = json.decode(result.body)['data'];

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
    setState(() {
      Histories = histories;
    });

    void initState() {
      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: FutureBuilder(
              future: getHistory(),
              builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  height: 80,
                  decoration: const BoxDecoration(
                      color: Color(0xff85B5ED),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.history,
                              size: 40,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('History',
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)))
                          ],
                        ),
                      ),
                      // Container(
                      //   child: SearchBarAnimation(
                      //     textEditingController: TextEditingController(),
                      //     isOriginalAnimation: true,
                      //     enableKeyboardFocus: true,
                      //     onExpansionComplete: () {
                      //       debugPrint(
                      //           'do something just after searchbox is opened.');
                      //     },
                      //     onCollapseComplete: () {
                      //       debugPrint(
                      //           'do something just after searchbox is closed.');
                      //     },
                      //     onPressButton: (isSearchBarOpens) {
                      //       debugPrint(
                      //           'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
                      //     },
                      //     trailingWidget: const Icon(
                      //       Icons.search,
                      //       size: 20,
                      //       color: Colors.black,
                      //     ),
                      //     secondaryButtonWidget: const Icon(
                      //       Icons.close,
                      //       size: 20,
                      //       color: Colors.black,
                      //     ),
                      //     buttonWidget: const Icon(
                      //       Icons.search,
                      //       size: 20,
                      //       color: Colors.black,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                // Container(
                //   margin: const EdgeInsets.only(top: 15, bottom: 25),
                //   child: RadioButtonGroup(
                //       options: options,
                //       textStyle: GoogleFonts.poppins(
                //           textStyle: const TextStyle(
                //               fontSize: 14,
                //               fontWeight: FontWeight.w600,
                //               color: Colors.white)),
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       mainColor: const Color(0xff85B5ED),
                //       // selectedBorderSide: BorderSide(width: 2, color: Colors.pink.shade300),
                //       buttonWidth: 85,
                //       spaceBetween: 5,
                //       buttonHeight: 35,
                //       callback: (RadioOption val) {
                //         setState(() {
                //           label = val.label;
                //         });
                //         print(val);
                //       }),
                // ),
                Container(
                  
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        History history = snapshot.data![index];
                        return Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 25, left: 20, right: 20),
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, top: 15,),
                              width: 400,
                              height: 90,
                              decoration: BoxDecoration(
                                color: const Color(0xffAACFFB),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: const Offset(
                                        0, 1), // Mengatur posisi bayangan
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        history.guru_bk,
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black87)),
                                      ),
                                      Text(
                                        history.tanggal,
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black87)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.timer),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            history.jam_mulai,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black87)),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                            child: Text(
                                              '-',
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ),
                                          Text(
                                            history.jam_berakhir,
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black87)),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        history.tempat,
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black87)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 40, bottom: 90),
                              width: 160,
                              height: 30,
                              padding: const EdgeInsets.only(top: 5),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xff0A2647)),
                              child: Text(history.jenis_layanan,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white))),
                            ),
                            
                          ],
                        );
                      }
                      ),
                    
                ),
       
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
              },
            ),
        ));
  }
}
