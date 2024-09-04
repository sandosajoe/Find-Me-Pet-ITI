
import 'package:find_me_iti/feature/splash/widgets/splashBody.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SplashBody(),
    );
  }
}