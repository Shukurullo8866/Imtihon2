import 'package:flutter/material.dart';

class DetailPageWidget extends StatefulWidget {
  const DetailPageWidget({Key? key}) : super(key: key);

  @override
  State<DetailPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<DetailPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Login"));
  }
}
