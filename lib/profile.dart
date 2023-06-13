import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_layanan_bk/editprofile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 10, bottom: 50),
                height: 320,
                decoration: const BoxDecoration(
                    color: Color(0xffB3D5FF),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60))),
                child: const Image(
                    image: AssetImage('assets/img/editprofile.png')),
              ),
              Transform(
                transform: Matrix4.translationValues(00.0, -30.0, 0.0),
                child: FractionalTranslation(
                  translation: const Offset(-0.5, 0.0),
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: const BoxDecoration(
                        color: Color(0xffE7F0FB), shape: BoxShape.circle),
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(360.0, 20.0, 0.0),
                child: FractionalTranslation(
                  translation: const Offset(-0.5, 0.0),
                  child: Container(
                    width: 70.0,
                    height: 65.0,
                    decoration: BoxDecoration(
                        color: const Color(0xffE7F0FB),
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(50.0, 200.0, 0.0),
                child: FractionalTranslation(
                  translation: const Offset(-0.5, 0.0),
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: const BoxDecoration(
                        color: Color(0xffE7F0FB), shape: BoxShape.circle),
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(360.0, 240.0, 0.0),
                child: FractionalTranslation(
                  translation: const Offset(-0.5, 0.0),
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: const BoxDecoration(
                        color: Color(0xffE7F0FB), shape: BoxShape.circle),
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(200.0, 260.0, 0.0),
                child: FractionalTranslation(
                    translation: const Offset(-0.5, 0.0),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset:
                                const Offset(0, 3), // Mengatur posisi bayangan
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black38))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Username',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87)),
                                ),
                                Text(
                                  'Mr. Ricky Sudrajat',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black38)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black38))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Bio',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87)),
                                ),
                                Text(
                                  'Eat, Sleep, Conseling',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black38)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black38))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Email',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87)),
                                ),
                                Text(
                                  'MrRicky@gmail.com',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black38)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black38))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Password',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87)),
                                ),
                                Text(
                                  '********',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black38)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black38))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Gender',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87)),
                                ),
                                Text(
                                  'Female',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black38)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            padding: const EdgeInsets.only(bottom: 10),
                            decoration: const BoxDecoration(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Phone Number',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black87)),
                                ),
                                Text(
                                  '0987654321',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black38)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 540, left: 70),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()));
                  },
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(260, 40)),
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xffB3D5FF))),
                  child: Text('Edit Profile',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
