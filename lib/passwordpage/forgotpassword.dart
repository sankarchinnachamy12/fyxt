import 'package:flutter/material.dart';
import 'package:fyxt_maintance/reusable_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({super.key});
  @override
  State<forgotpassword> createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  TextEditingController forgotController = TextEditingController();
  String? email;
  final _formKey = GlobalKey<FormState>();
  String _userEmail = '';
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
                            child: Image.asset('assets/images/fxyt.png')),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    new Center(
                      child: new Text('Forgot Password',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 4,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                            "Enter your email and we'll send you a link to \n             reset your password",
                            style: TextStyle(color: Color(0xFF768692)))),
                    const SizedBox(
                      height: 40,
                    ),
                    reusableTextField(
                        "Email", Colors.white, false, forgotController),
                    const SizedBox(
                      height: 20,
                    ),
                    reusablsigninfield(
                        "Submit", const Color(0xFFf56c56), false),
                  ]))),
        ],
      ),
    );
  }
}
