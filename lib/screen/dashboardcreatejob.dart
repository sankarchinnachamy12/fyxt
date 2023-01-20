import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/colors.dart';

class createjob extends StatefulWidget {
  const createjob({Key? key}) : super(key: key);

  @override
  State<createjob> createState() => _createjobState();
}

class _createjobState extends State<createjob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 65),
        child: AppBar(
          backgroundColor: Color.fromRGBO(25, 44, 73, 1),
          leading: Image.asset(
            "assets/images/fxyt.webp",fit: BoxFit.contain,
            height: 10,
            width: 10,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.power_settings_new,
                  color: Colors.red,
                ))
          ],
        ),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        padding: EdgeInsets.all(10.0),
        children: [
          Container(
            height: 400,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
            ),
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/fxyt.webp"),
                    Text("207"),
                    Text("Emergency")

                  ],
                )),
          ),
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
            ),
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                       Image.asset("assets/images/fxyt.webp"),
                       Text("9107"),
                      Text("All Jobs")

              ],
            )),
          ),
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
            ),
            child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/fxyt.webp"),
              Text("624"),
              Text("Assigined To me")

            ],
          )),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.all(10),
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(25, 44, 73, 1),
        ),
        //color: Colors.blue,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: white,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Create job",
                  style: TextStyle(color: white),
                ),
              )
            ]),
      ),
    );
  }
}
