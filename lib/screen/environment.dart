
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../layout/loginmodel.dart';
import '../theme/colors.dart';
import '../theme/colors.dart';

class environmentscreen extends StatefulWidget {
  const environmentscreen({Key? key}) : super(key: key);

  @override
  State<environmentscreen> createState() => _environmentscreenState();
}

class _environmentscreenState extends State<environmentscreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isSelected = false;

    LoginResponseModel? val;
    

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
        body: Stack(children: <Widget>[
          new Container(
            decoration: const BoxDecoration(
              image: const DecorationImage(
                image: const AssetImage("assets/images/group_12.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 106),
              child: Center(
                child: SizedBox(
                    width: 106,
                    height: 66,
                    child: Image.asset("assets/images/fxyt.webp")),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            new Center(
              child: new Text('Environment',
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
                child: Text("Choose which environment your want to enter",
                    style: TextStyle(color: textcolor))),
            const SizedBox(
              height: 40,
            ),

            GestureDetector(
              onTap: () {
                // if (isSelected = false) {
                //   isSelected = true;
                // } else {
                //   isSelected = false;
                // }
                // setState(() {});
              },
              child: Container(
                height: 120,
                width: 333,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: val?.domains.length,
                    itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                //color: Colors.white,
                                color: isSelected ? Colors.red : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text('${"" }'),
                              )),
                        )),

              ),
              ),
            // scrolldown(),
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
                  "Enter",
                ),
              ),
            ),
          ]),
        ]));
  }
}
