import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hoof_boot_rebuild/walkthrough/walkthrough.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  startTimer()
  {
    Timer(
      const Duration(seconds: 3),() async{
        Navigator.push(context, MaterialPageRoute(builder: (c)=> const WalkThrough()));
    });

  }
  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("lib/images/splash_screen.png",
            width: 279,
            height: 97,
            fit: BoxFit.cover,)
        ],
      ),
    );
  }
}
