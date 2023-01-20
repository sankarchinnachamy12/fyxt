import 'package:flutter/material.dart';
import 'package:fyxt_maintance/screen/commonscreen.dart';
import 'package:fyxt_maintance/services/postapi.dart';
import 'package:fyxt_maintance/services/servererror.dart';
import 'package:fyxt_maintance/theme/colors.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  //late final _loading;
  bool? isChecked = false;
  bool? value=false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? email, password;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _loadUserEmailPassword();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return
      Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(children: <Widget>[
                commonbackground(),
              SingleChildScrollView(
            child:
              new Center(
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    children: [
                      SizedBox(height: 70),
                      new Image.asset(
                        "assets/images/fxyt.webp",
                        height: 76,
                        width: 106,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Welcome back!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Noto Sans'),
                      ),
                      SizedBox(height: 45),
              Container(
                height: 40,
                width: 333,
                child: TextFormField(
                    controller: emailController,
                    onSaved: (input) => loginRequestModel.email,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
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
                height: 30,
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
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(118, 128, 146, 1), fontSize: 12),
                    hintText: "Password",
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 40,
                width: 333,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(
                      height: 24.0,
                      width: 24.0,
                      child: Theme(
                          data: ThemeData(
                              unselectedWidgetColor: bglight // Your color
                              ),
                          child: Checkbox(
                              activeColor: bglight,
                              checkColor: Colors.black,
                              value: isChecked,
                              onChanged: rememberme))),
                  SizedBox(width: 5.0),
                  Text("Remember Me",
                      style: TextStyle(
                          color: bglight,
                          fontSize: 12,
                          fontFamily: 'Roboto-Bold')),
                ]),
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
                    _submit();
                    // Navigator.of(context).pushNamed('/environment');
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
                height: 5,
              ),
              const Center(
                child: Text(
                  "or",
                  style: TextStyle(color: bglight),
                ),
              ),
              const SizedBox(
                height: 15,
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
              SizedBox(
                height: 100,
              ),
              //Spacer(),
              TextButton(
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
            ]),
          ),
        )
              )]),
    );
  }

  void rememberme(bool? value) {
    print("Handle Rember Me");
    isChecked = value;
    SharedPreferences.getInstance().then(
      (prefs) {
        prefs.setBool("rememberme", value!);
        prefs.setString('email', emailController.text);
        prefs.setString('password', passwordController.text);
      },
    );
    setState(() {
      isChecked = value;
    });
  }

  void _loadUserEmailPassword() async {
    print("Load Email");
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var email = _prefs.getString("email") ?? "";
      var password = _prefs.getString("password") ?? "";
      var remeberMe = _prefs.getBool("remember_me") ?? false;

      print(remeberMe);
      print(email);
      print(password);
      if (remeberMe) {
        setState(() {
          isChecked = true;
        });
        emailController.text = email ?? "";
        passwordController.text = password ?? "";
      }
    } catch (e) {
      print(e);
    }
  }
  void _submit() {
    // Show a loading spinner while the validation is in progress
    setState(() {
      isChecked = true;
    });

    // Validate the email and password
    validateCredentials(emailController.text, passwordController.text)
        .then((result) {
      // Hide the loading spinner
      setState(() {
        isChecked = false;
      });

      // Show a success or error message
      if (validateCredentials == true) {
        print("enter the good value");
      } else {
        AlertDialogs.yesCancelDialog(context, 'yes', '${result}');
      }
      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
    });
  }
}

