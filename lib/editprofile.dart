import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 10, bottom: 50),
                height: 320,
                decoration: BoxDecoration(
                  color: Color(0xffB3D5FF),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))
                ),
                child: Image(image: AssetImage('assets/img/editprofile.png')),
              ),
              Transform(
              transform: Matrix4.translationValues(00.0, -30.0, 0.0),
              child: FractionalTranslation(
                translation: Offset(-0.5, 0.0),
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      color: Color(0xffE7F0FB), shape: BoxShape.circle),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(360.0, 20.0, 0.0),
              child: FractionalTranslation(
                translation: Offset(-0.5, 0.0),
                child: Container(
                  width: 70.0,
                  height: 65.0,
                  decoration: BoxDecoration(
                      color: Color(0xffE7F0FB), borderRadius: BorderRadius.circular(200)),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(50.0, 200.0, 0.0),
              child: FractionalTranslation(
                translation: Offset(-0.5, 0.0),
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Color(0xffE7F0FB), shape: BoxShape.circle),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(360.0, 240.0, 0.0),
              child: FractionalTranslation(
                translation: Offset(-0.5, 0.0),
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      color: Color(0xffE7F0FB), shape: BoxShape.circle),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(200.0, 260.0, 0.0),
              child: FractionalTranslation(
                translation: Offset(-0.5, 0.0),
                child: Container(
              width: 300,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25),
                ),
                boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3), // Mengatur posisi bayangan
                    ),
                  ],
              ),
            )
              ),
            ),
            
            ],
          )
        ],
      ),
    );
  }
}