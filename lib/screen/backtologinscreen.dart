import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/colors.dart';
import 'commonscreen.dart';

class backtologin extends StatefulWidget {
  String? Value;
  @override
  State<backtologin> createState() => _backtologinState();
}

class _backtologinState extends State<backtologin> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    TextEditingController forgotController = TextEditingController();
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
        // body: Stack(children: <Widget>[
        //   new Container(
        //     decoration: const BoxDecoration(
        //       image: const DecorationImage(
        //         image: const AssetImage("assets/images/group_12.png"),
        //         fit: BoxFit.cover,
        //       ),
        //     ),
        //   ),
        //   Column(children: <Widget>[
        //     Padding(
        //       padding: const EdgeInsets.only(top: 106),
        //       child: Center(
        //         child: SizedBox(
        //             //width: 106,
        //             height: 66,
        //             child: Image.asset("assets/images/fxyt.webp")),
        //       ),
        //     ),
        body: Stack(children: [
          commonbackground(),
          Center(
            child: new Text('Thanks',
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  height: 4,
                  color: Colors.white,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          new Container(
            child: new Text(
              "You should receive an email in a few moments.\n please open that link to reset your password",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.5,
                color: textcolor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          new Center(
            child: new Text('${forgotController.text}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  height: 4,
                  color: Colors.white,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 333,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: buttonActive),
              onPressed: () async {},
              child: Text(
                "Back to Log in",
              ),
            ),
          ),
          new Center(
            child: new Text('Resend Email?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  height: 4,
                  color: Colors.white,
                )),
          ),
        ]));
  }
}
