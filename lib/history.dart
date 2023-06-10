import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:crea_radio_button/crea_radio_button.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            height: 80,
            decoration: BoxDecoration(
                color: Color(0xff85B5ED),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.history,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('History',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)))
                    ],
                  ),
                ),
                Container(
                  child: SearchBarAnimation(
                    textEditingController: TextEditingController(),
                    isOriginalAnimation: true,
                    enableKeyboardFocus: true,
                    onExpansionComplete: () {
                      debugPrint(
                          'do something just after searchbox is opened.');
                    },
                    onCollapseComplete: () {
                      debugPrint(
                          'do something just after searchbox is closed.');
                    },
                    onPressButton: (isSearchBarOpens) {
                      debugPrint(
                          'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
                    },
                    trailingWidget: const Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.black,
                    ),
                    secondaryButtonWidget: const Icon(
                      Icons.close,
                      size: 20,
                      color: Colors.black,
                    ),
                    buttonWidget: const Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 25),
            child: RadioButtonGroup(
                options: options,
                textStyle: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                mainAxisAlignment: MainAxisAlignment.center,
                mainColor: Color(0xff85B5ED),
                // selectedBorderSide: BorderSide(width: 2, color: Colors.pink.shade300),
                buttonWidth: 85,
                spaceBetween: 5,
                buttonHeight: 35,
                callback: (RadioOption val) {
                  setState(() {
                    label = val.label;
                  });
                  print(val);
                }),
          ),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 25, left: 20, right: 20),
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                width: 400,
                height: 90,
                decoration: BoxDecoration(
                  color: Color(0xffAACFFB),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1), // Mengatur posisi bayangan
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mr. Ricky Sudrajat',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87)),
                        ),
                        Text(
                          '22 - 2 - 2022',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '22 - 2 - 2022',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87)),
                            ),
                          ],
                        ),
                        Text(
                          'Ruang BK',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
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
                margin: EdgeInsets.only(left: 40, bottom: 50),
                width: 160,
                height: 30,
                padding: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xff0A2647)),
                child: Text('Private Conseling',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.white))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
