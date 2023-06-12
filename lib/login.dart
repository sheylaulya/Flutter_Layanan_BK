import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_layanan_bk/components/bottomnavbar.dart';
import 'package:mobile_layanan_bk/home.dart';
import 'package:mobile_layanan_bk/method/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  void loginUser() async {
    final data = {
      'name': name.text.toString(),
      'password': password.text.toString(),
    };

    final result = await API().postRequest(route: '/login', data: data);
    final Response = jsonDecode(result.body);
    if (Response['status'] == 200) {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      await preferences.setInt('user_id', Response['user']['id']);
      await preferences.setString('name', Response['user']['name']);
      await preferences.setString('email', Response['user']['email']);
      await preferences.setString('token', Response['token']);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(Response['message']),
      ));
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const BottomNavigation()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
             Transform(
                transform: Matrix4.translationValues(380.0, -180.0, 0.0),
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
                transform: Matrix4.translationValues(-80.0, 100.0, 0.0),
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
                transform: Matrix4.translationValues(380.0, 650.0, 0.0),
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
            Container(
              margin: EdgeInsets.only(top: 100),
              // decoration: const BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage("assets/img/login.png"),
              //     fit: BoxFit.cover,
              //   ),
              child: Center(
              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/img/login-illust.png'),
                      width: 250,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Email',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            controller: name,
                            decoration: const InputDecoration(
                                // prefixIcon: Icon(Icons.email),
                                labelText: 'Enter Your Name',
                                contentPadding:
                                    EdgeInsets.only(left: 20, top: 5, bottom: 5),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Password',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500))),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            controller: password,
                            decoration: const InputDecoration(
                              // prefixIcon: Icon(Icons.email),
                              labelText: 'Enter Your Password',
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 5, bottom: 5),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            child: ElevatedButton(
                              onPressed: () {
                                loginUser();
                              },
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(500, 50)),
                                  backgroundColor: const MaterialStatePropertyAll(
                                      Color(0xffB3D5FF))),
                              child: Text('Login',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
