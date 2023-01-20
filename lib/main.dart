import 'package:flutter/material.dart';
import 'package:fyxt_maintance/login.dart';

import 'App route/ongenerateroute.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: "/",
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        home: Scaffold(body:fyxt()));
  }
}
