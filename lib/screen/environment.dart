import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/colors.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:environmentscreen()
    );
  }
}


 class environmentscreen extends StatefulWidget {
   const environmentscreen({Key? key}) : super(key: key);
 
   @override
   State<environmentscreen> createState() => _environmentscreenState();
 }
 
 class _environmentscreenState extends State<environmentscreen> {
   @override
   Widget build(BuildContext context) {
     double screenWidth = MediaQuery
         .of(context)
         .size
         .width;
     double screenHeight = MediaQuery
         .of(context)
         .size
         .height;
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
                         child: Text(
                             "Choose which environment your want to enter",
                             style: TextStyle(color: textcolor))),
                     const SizedBox(
                       height: 40,
                     ),
                     Container(
                       height: 80,
                       child:ListView(
                       scrollDirection: Axis.horizontal,
                           //mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                           children:[
                             Container(
                               height: 100,
                               width: 200,
                               alignment: Alignment.center,
                               margin: const EdgeInsets.only(left: 10.0),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 border: Border.all(
                                   color: Colors.white,
                                 ),
                                 borderRadius: BorderRadius.circular(8.0),
                               ),
                               child: ElevatedButton(
                              style: ElevatedButton.styleFrom(primary: white),
                                 onPressed: () {

                                 },
                                 child: Center(
                                   child: Text("Krishina",style:  TextStyle(fontSize: 16,
                                       color: Color.fromRGBO(17, 35, 46, 1),fontWeight: FontWeight.bold,fontFamily: "Roboto"),),
                                 ),
                               ),
                             ),
                             SizedBox(
                               width: 5 ,
                             ),
                             Container(
                               height: 100,
                               width: 200,
                               alignment: Alignment.center,
                               margin: const EdgeInsets.only(left: 4.0),
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 border: Border.all(
                                   color: Colors.white,
                                 ),
                                 borderRadius: BorderRadius.circular(8.0),
                               ),
                               child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: white) ,
                                 onPressed: () {
                                   // Navigator.push(
                                   //     context, MaterialPageRoute(builder: (_) => splashScreen()));
                                 },
                                 child: Center(
                                   child: Text("krishina",style:  TextStyle(fontSize: 16,
                                       color: Color.fromRGBO(17, 35, 46, 1),fontWeight: FontWeight.bold),),
                                 ),
                               ),
                             ),
                           ]
                       ),),

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
                   ])
               ])
     );
   }
 }

