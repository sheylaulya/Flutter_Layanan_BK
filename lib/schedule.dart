import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB3D5FF),
      body: SingleChildScrollView(
        child: Column(
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
              height: 650,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    width: 370,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Color(0xff537188),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '09.00 - 11.00',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(0.8))),
                            ),
                            Text(
                              'Sheila Riani',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(0.8))),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text('Private Conseling',
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
                                            color:
                                                Colors.white.withOpacity(0.8))),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 2),
                                    width: 120,
                                    height: 30,
                                    decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Text(
                                      'Pending', textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Colors.black)),
                                    ),
                                  ),
                                ],
                              ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                         Container(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    width: 370,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Color(0xff394867),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '09.00 - 11.00',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(0.8))),
                            ),
                            Text(
                              'Sheila Riani',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(0.8))),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text('Career Conseling',
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
                                            color:
                                                Colors.white.withOpacity(0.8))),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 2),
                                    width: 120,
                                    height: 30,
                                    decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Text(
                                      'Pending', textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Colors.black)),
                                    ),
                                  ),
                                ],
                              ),
                        )
                      ],
                    ),
                  ),
                   SizedBox(height: 20,),
                         Container(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    width: 370,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Color(0xff212A3E),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '09.00 - 11.00',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(0.8))),
                            ),
                            Text(
                              'Sheila Riani',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white.withOpacity(0.8))),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text('Study Conseling',
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
                                            color:
                                                Colors.white.withOpacity(0.8))),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 2),
                                    width: 120,
                                    height: 30,
                                    decoration: BoxDecoration(
                                          color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Text(
                                      'Re-Schedule', textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Colors.black)),
                                    ),
                                  ),
                                ],
                              ),
                        )
                      ],
                    ),
                  ),
                  
                   SizedBox(height: 20,),
                         Container(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    width: 370,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        // border: Border.all(color: Colors.black26)
                         boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1), // Mengatur posisi bayangan
                    ),
                         ]
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '09.00 - 11.00',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black.withOpacity(0.8))),
                            ),
                            Text(
                              'Sheila Riani',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black.withOpacity(0.8))),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text('Social Conseling',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black))),
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
                                            color:
                                                Colors.black.withOpacity(0.8))),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 2),
                                    width: 120,
                                    height: 30,
                                    decoration: BoxDecoration(
                                          color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(10))
                                    ),
                                    child: Text(
                                      'Re-Schedule', textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
