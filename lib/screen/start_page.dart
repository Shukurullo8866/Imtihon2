import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/screen/login.dart';

import '../utils/appRouts.dart';
import '../utils/images.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<StartPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginPageWidget())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(MyImages.image_start), fit: BoxFit.cover),
            ),
          ),
          Center(
              child: Column(
            children: [
              SizedBox(height: 150),
              Container(
                  child: const Text(
                "Peshot",
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600),
              )),
              SizedBox(height: 11.0),
              Container(
                child: const Text(
                  "Welcome to peshot\nBook easy and cheap hotels only on Peshot",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
