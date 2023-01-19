import 'package:flutter/material.dart';

commonbackground() {
  Column(children: [
    new Container(
      decoration: const BoxDecoration(
        image: const DecorationImage(
          image: const AssetImage("assets/images/group_12.png"),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 106),
        child: Center(
          child: SizedBox(
         //width: 106,
              height: 66,
              child: Image.asset("assets/images/fxyt.webp")),
        ),
      )
    ])
  ]);
}
