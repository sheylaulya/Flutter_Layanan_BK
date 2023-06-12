import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_layanan_bk/login.dart';
import 'package:mobile_layanan_bk/onboardConseling.dart';

class OnBoardWelcome extends StatefulWidget {
  const OnBoardWelcome({super.key});

  @override
  State<OnBoardWelcome> createState() => _OnBoardWelcomeState();
}

class _OnBoardWelcomeState extends State<OnBoardWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.translationValues(0.0, -140.0, 0.0),
              child: FractionalTranslation(
                translation: const Offset(-0.5, 0.0),
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  decoration: const BoxDecoration(
                      color: Color(0xffB3D5FF), shape: BoxShape.circle),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(500.0, 200.0, 0.0),
              child: FractionalTranslation(
                translation: const Offset(-0.5, 0.0),
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  decoration: const BoxDecoration(
                      color: Color(0xffB3D5FF), shape: BoxShape.circle),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(0.0, 630.0, 0.0),
              child: FractionalTranslation(
                translation: const Offset(-0.5, 0.0),
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  decoration: const BoxDecoration(
                      color: Color(0xffB3D5FF), shape: BoxShape.circle),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/img/OBWelcome.jpg'),
                    width: 250,
                  ),
                  Text(
                    'Welcome to Starbhak Konseling',
                    style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                  ),
                  Text(
                    'We hope you are statisfied',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnBoardConseling()));
                    },
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(300, 50)),
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xffB3D5FF))),
                    child: Text('Next',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(300, 50)),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.white)),
                    child: Text('Skip',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffB3D5FF)))),
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
