import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB3D5FF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(
              image: AssetImage('assets/img/profile.png'),
              width: 250,
            ),


            Container(
              padding: EdgeInsets.only(left: 30, top: 20, right: 30),
              width: double.infinity,
              height: 650,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Profile Account',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffB3D5FF)))),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Color(0xffB3D5FF),
                        size: 30,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Username',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54))),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              // prefixIcon: Icon(Icons.Username),
                              labelText: 'Enter Your Username',
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 5, bottom: 5),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Password',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54))),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              // prefixIcon: Icon(Icons.password),
                              labelText: 'Enter Your password',
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 5, bottom: 5),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Personal Info',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffB3D5FF)))),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Color(0xffB3D5FF),
                        size: 30,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54))),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              // prefixIcon: Icon(Icons.Email),
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
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Gender',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54))),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              // prefixIcon: Icon(Icons.Gender),
                              labelText: 'Enter Your Gender',
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 5, bottom: 5),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Phone Number',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54))),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              // prefixIcon: Icon(Icons.Phone Number),
                              labelText: 'Enter Your Phone Number',
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 5, bottom: 5),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                   ElevatedButton(
                        onPressed: () {},
                        child: Text('Save Changes',  style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600))),
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(200, 50)), backgroundColor: MaterialStatePropertyAll(Color(0xffB3D5FF))
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
