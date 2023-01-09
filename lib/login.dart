// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unnecessary_new

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fyxt_maintance/reusable_widget.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart';

class fyxt extends StatefulWidget {
  const fyxt({Key? key}) : super(key: key);

  @override
  State<fyxt> createState() => _fyxtState();
}

class _fyxtState extends State<fyxt> {
  bool? isChecked = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? email, password;
  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
  String _password = '';

  var status;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/group_12.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 106),
                      child: Center(
                        child: Container(
                            width: 106,
                            height: 66,
                            /*decoration: BoxDecoration(_trySubmitForm,
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                            child: Image.asset('assets/images/fxyt.png')),
                      ),
                    ),
                    new Center(
                      child: new Text('Welcome back!',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto-Bold',
                            fontSize: 30,
                            height: 4,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    reusableTextField(
                        "User Name", Colors.white, false, emailController),
                    const SizedBox(
                      height: 15,
                    ),
                    reusableTextField(
                        "Password", Colors.white, true, passwordController),

                    const SizedBox(height: 15),
                    Container(
                      height: 40,
                      width: 370,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        checkColor: Colors.black,
                        side: const BorderSide(color: Colors.white, width: 2),
                        value: isChecked,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (bool? value) {
                          // This is where we update the state when the checkbox is tapped
                          setState(() {
                            isChecked = value;
                          });
                        },
                        title: const Text(
                          "Remember me",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Checkbox
                    //       loginpage()));
                    //  },
                    reusablsigninfield(
                        "Log In", const Color(0xFFf56c56), false),
                    const SizedBox(
                      height: 3,
                    ),
                    const Center(child: Text("or")),
                    const SizedBox(
                      height: 3,
                    ),
                    reusablsigninfield(
                        "Log In With SSO", const Color(0xFFf56c56), false),
                  ]))),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/forgotpassword');
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto-Bold',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
