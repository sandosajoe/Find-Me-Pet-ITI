import 'package:find_me_iti/feature/splash/widgets/continueToApp.dart';
import 'package:find_me_iti/feature/splash/widgets/welcome1.dart';
import 'package:find_me_iti/feature/splash/widgets/welcome2.dart';
import 'package:flutter/material.dart';

class SplashPageView extends StatelessWidget {
   SplashPageView({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
      controller:_controller ,
      children: const [
        Welcome1(),
        Welcome2(),
        ContinueToApp()
      ],
      ),
    );
  }
}
