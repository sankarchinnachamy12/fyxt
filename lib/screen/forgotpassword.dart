import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyxt_maintance/reusable_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../extension/validator.dart';
import '../layout/alert_dialog.dart';
import '../layout/header.dart';
import '../layout/loginmodel.dart';
import '../services/Apiservices.dart';
import '../services/postapi.dart';
import '../theme/colors.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({super.key});
  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  TextEditingController forgotController = TextEditingController();
  late LoginRequestModel loginRequestModel;
  final _formKey = GlobalKey<FormState>();
  String? email ;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: const BoxDecoration(
              image: const DecorationImage(
                image: const AssetImage("assets/images/group_12.png"),
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
                        child: SizedBox(
                            width: 106,
                            height: 66,
                            /*decoration: BoxDecoration(_trySubmitForm,
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                            child: Image.asset("assets/images/fxyt.webp")),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    new Center(
                      child: new Text('Forgot Password?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 4,
                            color: Colors.white,
                          )),
                    ),

                         SizedBox(height: 5,),
                         Text(
                           textAlign:TextAlign.center,
                            "Enter your email and we'll send you a link to reset your\n"+" password",
                            style: TextStyle(color: Color(0xFF768692),)
                        ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 40,
                      width: 333,
                      child: TextFormField(
                          controller: forgotController,
                          onSaved: (value)=>email=value,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                            contentPadding: EdgeInsets.symmetric(vertical: 1),
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(118, 128, 146, 1),
                                fontSize: 12),
                            hintText: "Email",
                          )),
                    ),
                    SizedBox(
                      height:20,
                    ),
                    Container(
                      height: 40,
                      width: 333,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: buttonActive),
                        onPressed: ()  {
                          Navigator.of(context)
                              .pushNamed('/passwordpage');
                          // if(_formKey.currentState!.validate()){
                          //   _formKey.currentState!.save();
                            //_submit();
                        //  }

                          },

                        child: Text(
                          "Submit",
                        ),
                      ),
                    ),
                  ]))),
        ],
      ),
    );
  }
  void _submit() async {
    var url = Uri.parse(ApiConstants.forgotpasswordurl);
    final response = await http.post(
        url, headers: ApiHeaders.tenantHeader,
      body: jsonEncode({'email': email}),
    );
    print(response.statusCode);

    if (response.statusCode == 200) {
      // password reset request successful
      Navigator.of(context)
          .pushNamed('/backtologin');
    } else {
      // password reset request failed
       print("enter the correct password");
    }
  }
}

