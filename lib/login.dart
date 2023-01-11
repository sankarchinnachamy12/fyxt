import 'package:flutter/material.dart';
import 'package:fyxt_maintance/services/postapi.dart';
import 'package:fyxt_maintance/theme/colors.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

import 'extension/validator.dart';
import 'layout/alert_dialog.dart';
import 'layout/loginmodel.dart';

class fyxt extends StatefulWidget {
  const fyxt({Key? key}) : super(key: key);

  @override
  State<fyxt> createState() => _fyxtState();
}

class _fyxtState extends State<fyxt> {
  late LoginRequestModel loginRequestModel;
  bool? isChecked = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? email, password;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    //
  }

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
                            child: Image.asset("assets/images/fxyt.webp")),
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
                    Container(
                      height: 40,
                      width: 333,
                      child: TextFormField(
                          controller: emailController,
                          onSaved: (input) => loginRequestModel.email,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(vertical: 1),
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(118, 128, 146, 1),
                                fontSize: 12),
                            hintText: "Username",
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 40,
                      width: 333,
                      child: TextFormField(
                        controller: passwordController,
                        onSaved: (input) => loginRequestModel.password,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                              color: Color.fromRGBO(118, 128, 146, 1),
                              fontSize: 12),
                          hintText: "Password",
                        ),
                        obscureText: true,
                      ),
                    ),
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
                    Container(
                      height: 40,
                      width: 333,
                      decoration: BoxDecoration(
                        color: buttonActive,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: buttonActive),
                        onPressed: () async {
                          Navigator.of(context).pushNamed('/environment');
                          await EmailValidator(emailController.text, context);
                          APIService apiService = new APIService();
                          apiService
                              .login(loginRequestModel = new LoginRequestModel(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  passowrd: ''))
                              .then((value) {
                            if (value != null) {
                              setState(() {
                                print('valid user good!!');
                              });
                              if (value.token.isNotEmpty) {
                                Navigator.of(context).pushNamed('/environment');
                              } else {
                                AlertDialogs.yesCancelDialog(
                                    context, "yes", value.error);
                              }
                            }
                          });
                        },
                        child: Text(
                          "login",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Center(
                      child: Text(
                        "or",
                        style: TextStyle(color: bglight),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 40,
                      width: 333,
                      decoration: BoxDecoration(
                        color: buttonActive,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: buttonActive),
                        child: Text(
                          "Log in  With SSO",
                          style: TextStyle(color: bglight),
                        ),
                      ),
                    ),
                  ]))),
          Flex(direction: Axis.horizontal, children: [
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
            SizedBox(
              height: 20,
            ),
            Container()
          ]),
        ],
      ),
    );
  }
}
