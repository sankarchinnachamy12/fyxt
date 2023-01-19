import 'package:flutter/material.dart';
import '../screen/backtologinscreen.dart';
import '../screen/dashboard_screen.dart';
import '../screen/environment.dart';
import '../screen/forgotpassword.dart';
import '../screen/resetpassword.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/forgotpassword':
        return MaterialPageRoute(builder: (_) => forgotpassword());
      case '/environment':
        return MaterialPageRoute(builder: (_) => environmentscreen());
      case '/backtologin':
        return MaterialPageRoute(builder: (_) =>backtologin());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) =>dashboard());
      case '/passwordpage':
        return MaterialPageRoute(builder: (_) =>PasswordPage());


      default:
        return MaterialPageRoute(builder: (_) => const forgotpassword());
    }
  }
}
