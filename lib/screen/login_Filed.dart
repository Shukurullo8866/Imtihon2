import 'package:flutter/material.dart';
import 'package:travel/screen/sign_up.dart';
import 'package:travel/utils/appRouts.dart';

import '../utils/colors.dart';
import '../utils/images.dart';

class LoginFiledWidget extends StatefulWidget {
  const LoginFiledWidget({Key? key}) : super(key: key);

  @override
  State<LoginFiledWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginFiledWidget> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 237, 237),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 237, 237),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0, right: 220.0),
                child: Text(
                  "Log in",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
                ),
              ),
              SizedBox(height: 40.0),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 20.0),
                    child: Container(
                        width: 167.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, top: 3.0, right: 8.0),
                              child: Container(
                                height: 33.0,
                                width: 33.0,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(MyImages.image_goole),
                                )),
                              ),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              "Google",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    width: 167.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 13.0, top: 3.0, right: 8.0),
                          child: Container(
                            height: 33.0,
                            width: 33.0,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(MyImages.image_Vector),
                            )),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        const Text(
                          "Facebook",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                "Or log in using",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 15.0),
              Text(
                "The mail or password you entered is wrong",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 30.0),
              Positioned(
                top: 255.0,
                right: 0.0,
                left: 0.0,
                child: Container(
                  width: 354.0,
                  height: 50.0,
                  child: const TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      hintText: '    Mail',
                      hintStyle: TextStyle(fontSize: 13.0),
                      filled: true,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Positioned(
                top: 255.0,
                right: 0.0,
                left: 0.0,
                child: Container(
                  width: 354.0,
                  height: 50.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      hintText: '    Password',
                      hintStyle: TextStyle(fontSize: 13.0),
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(
                            () {
                              _obscureText = !_obscureText;
                            },
                          );
                        },
                      ),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Email cannot be blank' : null,
                    obscureText: _obscureText,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0, left: 250.0),
                child: InkWell( 
                    child: Text(
                  "Forgot your password?",
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                )),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: (() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>SignUpWidget()));
                }),
                child: Container(
                  width: 354.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: MyColors.C_15BE77,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ]),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 190.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Don???t have an account yet?",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                      child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
