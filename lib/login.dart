import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/login.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/img/login-illust.png'),
                  width: 250,
                ),
                SizedBox(height: 15,),
                Container(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500))),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            // prefixIcon: Icon(Icons.email),
                            labelText: 'Enter Your Email',
                            contentPadding:
                                EdgeInsets.only(left: 20, top: 5, bottom: 5),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Password',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500))),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
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
                      SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Login',  style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600))),
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(500, 50)), backgroundColor: MaterialStatePropertyAll(Color(0xffB3D5FF))
                                ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
