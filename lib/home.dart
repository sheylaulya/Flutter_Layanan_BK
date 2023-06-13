import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text("HomePage"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(preferences.getInt('user_id').toString()),
                    Text(
                      preferences.getString('name').toString(),
                    ),
                    Text(
                      preferences.getString('email').toString(),
                    ),
                    Text(
                      preferences.getString('token').toString(),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
