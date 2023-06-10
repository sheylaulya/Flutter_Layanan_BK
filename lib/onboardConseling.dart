import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_layanan_bk/onboardSocial.dart';

class OnBoardConseling extends StatefulWidget {
  const OnBoardConseling({super.key});

  @override
  State<OnBoardConseling> createState() => _OnBoardConselingState();
}

class _OnBoardConselingState extends State<OnBoardConseling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.translationValues(70.0, 50.0, 0.0),
              child: FractionalTranslation(
                translation: Offset(-0.5, 0.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Color(0xffB3D5FF), shape: BoxShape.circle),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(370.0, 100.0, 0.0),
              child: FractionalTranslation(
                translation: Offset(-0.5, 0.0),
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                      color: Color(0xffB3D5FF), shape: BoxShape.circle),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(500.0, 150.0, 0.0),
              child: FractionalTranslation(
                translation: Offset(-0.5, 0.0),
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                      color: Color(0xffB3D5FF), shape: BoxShape.circle),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(-100.0, 300.0, 0.0),
              child: FractionalTranslation(
                translation: Offset(-0.5, 0.0),
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                      color: Color(0xffB3D5FF), shape: BoxShape.circle),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(200.0, 650.0, 0.0),
              child: FractionalTranslation(
                translation: Offset(-0.5, 0.0),
                child: Container(
                  width: 300.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                      color: Color(0xffB3D5FF), shape: BoxShape.circle),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/img/OBConseling.jpg'),
                    width: 250,
                  ),
                  Text(
                    'Our Services',
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'We serve you a proper conseling \n which is good for your mental health',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnBoardSocial()));
                    },
                    child: Text('Next',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600))),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(300, 50)),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffB3D5FF))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffB3D5FF)))),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(300, 50)),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.white)),
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
