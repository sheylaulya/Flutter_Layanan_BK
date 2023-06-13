import 'package:flutter/material.dart';
import 'package:mobile_layanan_bk/login.dart';
import 'package:mobile_layanan_bk/onboardConseling.dart';
import 'package:mobile_layanan_bk/onboardSocial.dart';
import 'package:mobile_layanan_bk/onboardWelcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardWelcome(),
    );
  }
}
