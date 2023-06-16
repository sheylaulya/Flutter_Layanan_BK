import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_layanan_bk/onboardWelcome.dart';
import 'package:random_text_reveal/random_text_reveal.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnBoardWelcome()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Colors.white,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_TpyQnyJ5K8.json',
                width: 400,
                height: 400,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: const RandomTextReveal(
  text: 'Starbhak Konseling',
  duration: Duration(seconds: 2),
  style: TextStyle(
     color: Color(0xffB3D5FF),
    fontWeight: FontWeight.bold,
    fontSize: 25,
  ),
  curve: Curves.easeIn,
)
              )
              // SizedBox(
              //   width: 255.0,
              //   child:
              //   TextLiquidFill(
              //     text: 'SPUTIPAI',
              //     waveColor: Colors.blue.withOpacity(0.9),
              //     boxBackgroundColor: const Color(0xFF1a1a1a),
              //     loadDuration: const Duration(seconds: 2),
              //     textStyle: const TextStyle(
              //       fontSize: 45.0,
              //       letterSpacing: 2,
              //       fontFamily: "Assassins",
              //       fontWeight: FontWeight.bold,
              //     ),
              //     boxHeight: 85.0,
              //   ),
              // ),
            ],
          ),
        ),
    ),
);
}
}