import 'package:crea_radio_button/crea_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_layanan_bk/model/schedulemodel.dart';
import 'dart:convert';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  String label = "";
  List<RadioOption> options = [
    RadioOption("MONTHLY", "Private"),
    RadioOption("YEARLY", "Study"),
    RadioOption("ADO", "Social"),
    RadioOption("ADOH", "Career")
  ];

  List Schedules = [];
  void fetchdataschedule() async {
    List<Schedule> schedules = [];
    SharedPreferences sp = await SharedPreferences.getInstance();

    String urlLocal = "http://computer-armor.at.ply.gg:39438/api/schedule";

    var result = await http.get(Uri.parse(urlLocal));

    if (result.statusCode == 200) {
      var data = json.decode(result.body)['data'];

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
    setState(() {
      Schedules = schedules;
    });

    void initState() {
      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB3D5FF),
      body: SingleChildScrollView(
          child: FutureBuilder(
              future: getSchedule(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Schedule',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white)),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.white,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        width: double.infinity,
                        height: 700,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: ListView.builder(
                               shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        Schedule schedule = snapshot.data![index];
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(top: 10, left: 15, right: 15),
                              width: 320,
                              height: 110,
                              decoration: BoxDecoration(
                                  color: Color(0xff537188),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        schedule.jam_mulai+ '-' +schedule.jam_berakhir,
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white
                                                    .withOpacity(0.8))),
                                      ),
                                      Text(
                                        schedule.guru_bk,
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white
                                                    .withOpacity(0.8))),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(schedule.jenis_layanan,
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white))),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '2 Hours',
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white
                                                      .withOpacity(0.8))),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(top: 2),
                                          width: 120,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Text(
                                            schedule.status,
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ];
                }),
                      )
                    ],
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
    );
  }
}
