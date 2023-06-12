import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_layanan_bk/login.dart';

class OnBoardSocial extends StatefulWidget {
  const OnBoardSocial({super.key});

  @override
  State<OnBoardSocial> createState() => _OnBoardSocialState();
}

class _OnBoardSocialState extends State<OnBoardSocial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.translationValues(00.0, -150.0, 0.0),
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
              transform: Matrix4.translationValues(70.0, 450.0, 0.0),
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
              transform: Matrix4.translationValues(0.0, 650.0, 0.0),
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/img/OBSocial.jpg'),
                    width: 250,
                  ),
                  Text(
                    'Social Engage',
                    style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Social organisms, including human(s), live collectively in interacting populations.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text('Sign In',
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
