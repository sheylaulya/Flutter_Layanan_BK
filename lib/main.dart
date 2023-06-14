import 'package:flutter/material.dart';
import 'package:mobile_layanan_bk/components/bottomnavbar.dart';
import 'package:mobile_layanan_bk/history.dart';
import 'package:mobile_layanan_bk/home.dart';
import 'package:mobile_layanan_bk/login.dart';
import 'package:mobile_layanan_bk/onboardConseling.dart';
import 'package:mobile_layanan_bk/onboardSocial.dart';
import 'package:mobile_layanan_bk/onboardWelcome.dart';
import 'package:mobile_layanan_bk/profile.dart';

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
