import 'dart:async';

import 'package:find_me_iti/feature/splash/splash_page_view.dart';
import 'package:flutter/material.dart';

class splashbody extends StatefulWidget {
  const splashbody({super.key});

  @override
  State<splashbody> createState() => _splashbodyState();
}

// ignore: camel_case_types
class _splashbodyState extends State<splashbody> {
  @override
  void initState() {
    
    super.initState();
    startTimer();
  }
void startTimer() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>  SplashPageview()));
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Image.asset(
            "images/splashScreen/photo_2024-07-22_03-57-10-removebg-preview.png"),
      ),
    );
  }
}




