
import 'package:find_me_iti/feature/splash/widgets/continueToApp.dart';
import 'package:find_me_iti/feature/splash/widgets/welcome1.dart';
import 'package:find_me_iti/feature/splash/widgets/welcome2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashPageview extends StatelessWidget {
   SplashPageview({super.key});
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
