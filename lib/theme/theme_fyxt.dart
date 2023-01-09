import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class Themeneobank {
  ThemeData light() {
    return ThemeData(
      appBarTheme: AppBarTheme(
          color: bglight
      ),
      scaffoldBackgroundColor: bglight,
      brightness: Brightness.light,
      textTheme: _textThemelight(),
      primaryColor: Colors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff0CABDF)),
          elevation: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) return 4;
            return 0;
          }),
          padding: MaterialStateProperty.all(EdgeInsets.all(16)),
          overlayColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return white.withOpacity(0.2);
            }
            else if (states.contains(MaterialState.hovered) ||
                states.contains(MaterialState.focused)) {
              return white.withOpacity(0.1);
            } else {
              return transparent;
            }
          }),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          )),
        ),
      ),
      iconTheme: IconThemeData(color: black),
      // pageTransitionsTheme: const PageTransitionsTheme(
      //     builders: <TargetPlatform, PageTransitionBuilder>{
      //       TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      //     }),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: bglight),
      checkboxTheme: CheckboxThemeData(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),),),
      unselectedWidgetColor: bcheckboxUnselectedLight,
      inputDecorationTheme: InputDecorationTheme(filled: true,
          fillColor: Color(0xffE9EEf0),
          hintStyle: TextStyle(color: Colors.black),
          border: InputBorder.none,
          errorStyle: GoogleFonts.notoSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: Colors.red
          ),
          contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 8),
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          labelStyle: const TextStyle(color: Colors.black),
          focusedErrorBorder: InputBorder.none),
      dividerTheme: const DividerThemeData(
        color: Colors.grey,
        thickness: 0.5,
      ),


    );
  }

  TextTheme _textThemelight() {
    return TextTheme(
      headline1: GoogleFonts.heebo(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color:  tPrimarylight
      ),
      headline2: GoogleFonts.heebo(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: tPrimarylight),
      headline3: GoogleFonts.notoSans(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color:bgDark ),
      headline4: GoogleFonts.notoSans(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        color:  tSecoundaryLight,
      ),
      headline5: GoogleFonts.notoSans(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: bgDark,
      ),
      headline6: GoogleFonts.notoSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: bgDarkContainer,
      ),
      bodyText1: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: bglight),
      bodyText2: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: tPrimarylight),
      subtitle1: GoogleFonts.notoSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: bdisableColor),
      subtitle2: GoogleFonts.heebo(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: bwhit12),
      caption: GoogleFonts.notoSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          color: bgDark),
      button: GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: bwhite1),
    );
  }

  ThemeData Dark() {
    return ThemeData(
      scaffoldBackgroundColor: bgDark,
      brightness: Brightness.light,
      textTheme: _textThemeDark(),
      primaryColor: Color(0xff161618),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff0CABDF)),
          elevation: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) return 4;
            return 0;
          }),
          padding: MaterialStateProperty.all(EdgeInsets.all(16)),
          overlayColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return white.withOpacity(0.2);
            }
            else if (states.contains(MaterialState.hovered) ||
                states.contains(MaterialState.focused)) {
              return white.withOpacity(0.1);
            } else {
              return transparent;
            }
          }),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          )),
        ),
      ),
      iconTheme: IconThemeData(color: black),
      // pageTransitionsTheme: const PageTransitionsTheme(
      //     builders: <TargetPlatform, PageTransitionBuilder>{
      //       TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      //     }),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: bglight),
      checkboxTheme: CheckboxThemeData(shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),),),
      unselectedWidgetColor: bcheckboxUnselectedLight,
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xff232323),
          labelStyle: GoogleFonts.notoSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: Color(0xff787F89)),
          border: InputBorder.none,
          errorStyle: GoogleFonts.notoSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              color: Colors.red
          ),
          contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 8),
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none),
      dividerTheme: const DividerThemeData(
        color: Colors.grey,
        thickness: 0.5,
      ),


    );
  }

  TextTheme _textThemeDark() {
    return TextTheme(
      headline1: GoogleFonts.heebo(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: tPrimaryDark
      ),
      headline2: GoogleFonts.heebo(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: tPrimaryDark),
      headline3: GoogleFonts.notoSans(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: bglight),
      bodyText1: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: bglight),
      bodyText2: GoogleFonts.notoSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: tPrimaryDark),
      subtitle1: GoogleFonts.notoSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: bdisableColor),
      subtitle2: GoogleFonts.heebo(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: bwhit12),
      caption: GoogleFonts.notoSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          color: tPrimaryDark),
      button: GoogleFonts.notoSans(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
          color: bwhite1),
      headline4: GoogleFonts.notoSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color: bdisableColor,
      ),
      headline5: GoogleFonts.notoSans(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        color:bwhite1,
      ),
      headline6: GoogleFonts.notoSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        color: Color(0xFFC8D8E4),
      ),
    );
  }
}
