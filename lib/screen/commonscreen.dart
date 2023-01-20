import 'package:flutter/material.dart';
class commonbackground extends StatelessWidget {
  const commonbackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: const DecorationImage(
          image: const AssetImage("assets/images/group_12.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
