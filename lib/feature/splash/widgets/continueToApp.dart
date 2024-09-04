import 'package:find_me_iti/core/styles/styles.dart';
import 'package:find_me_iti/navigationBar.dart';
import 'package:flutter/material.dart';

class ContinueToApp extends StatelessWidget {
  const ContinueToApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //margin:const EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: Colors.deepOrange[100],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(800),
                  // bottomRight: Radius.circular(40.0),
                )),
            child: Image.asset("images/splashScreen/4.png"),
          ),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 5),
            child: Text("LET'S GET STARTED!", style: Fonts.textStyle1),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 45, right: 22),
            child: Text(
              "By pressing 'continue to app' ,\n you will start.",
              softWrap: true,
              style: Fonts.textStyle2,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.deepOrange[100],
                borderRadius: BorderRadius.circular(30)),
            child: InkWell(
                onTap: () {
                 Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) {
                    return const navigationBar();
                  }));
                },
                child: const Center(
                    child: Text(
                  "continue to app",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ))),
          )

         
        ],
      ),
    );
  }
}
