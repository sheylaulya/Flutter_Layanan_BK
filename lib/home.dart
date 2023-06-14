import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_layanan_bk/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences preferences;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  void getUserData() async {
    setState(() {
      isLoading = true;
    });
    preferences = await SharedPreferences.getInstance();
    setState(() {
      isLoading = false;
    });
  }

  void logout() {
    preferences.clear();
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const LoginPage(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB3D5FF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi ! Welcome',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Divadan Arya',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff0A2647))),
                )
              ],
            ),
            Text('What can i do for you today?',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white))),
            SizedBox(
              height: 10,
            ),
            Image(
              image: AssetImage('assets/img/home.png'),
              width: 220,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 35, right: 35),
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Motivation Quotes For You',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff85B5ED)))),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 30, right: 30),
                    width: 400,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Color(0xff85B5ED).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mr. Ricky Sudrajat',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black.withOpacity(0.8)))),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            '“Lorem ipsum dolor sit amet consectetur. Diam morbi risus ut odio dictum id accumsan aliquam   ',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.8)))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
