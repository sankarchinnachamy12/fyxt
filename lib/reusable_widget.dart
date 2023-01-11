import 'package:flutter/material.dart';

Container reusableTextField(String text, Color fillColor,
    [bool? isPasswordType, TextEditingController? controller]) {
  return Container(
      height: 40,
      width: 333,
      child: TextField(
        controller: controller,
        obscureText: isPasswordType!,
        enableSuggestions: isPasswordType,
        autocorrect: isPasswordType,
        cursorColor: Color.fromRGBO(
          118,
          128,
          146,
          1,
        ),
        textAlign: TextAlign.center,
        //style: TextStyle(color: Colors.white.withOpacity(0.5)),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Color(0xFF768692)),
          contentPadding: EdgeInsets.symmetric(vertical: 1),
          hintText: text,

          filled: true,
          //floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: fillColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
        ),
        keyboardType: isPasswordType
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
      ));
}




Container signINSignUpButton(
    BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        isLogin ? "LOG IN" : "SIGN UP",
        style: TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
    ),
  );
}
