import 'dart:ui';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vetcareplus/userModes.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => userModes())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 49, 54),
      body: Center(child: Image.asset("image/vetcare+.png")),
    );
  }
}
