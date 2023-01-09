import 'package:flutter/material.dart';
import 'package:fyxt_maintance/passwordpage/forgotpassword.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/forgotpassword':
        return MaterialPageRoute(builder: (_) => forgotpassword());

      default:
        return MaterialPageRoute(builder: (_) => const forgotpassword());
    }
  }
}
