import 'package:find_me_iti/core/styles/body_colors.dart';
import 'package:find_me_iti/feature/main_home/presentation/widgets/about.dart';
import 'package:find_me_iti/feature/main_home/presentation/widgets/contact.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: GradientDecoration.gradientBoxDecoration,
        // BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.white,
        //       Colors.orange.shade100,
        //       Colors.orange.shade200,
        //       Colors.deepOrange.shade100,
        //       Colors.deepOrange.shade300,
        //     ],
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //   ),
        // ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(top: 80, right: 12, left: 12),
              decoration: BoxDecoration(
                color:  Colors.deepOrange[100],
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const AboutOrganization();
                  }));
                },
                child: const Center(
                  child: Text(
                    "About",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(right: 12, left: 12),
              decoration: BoxDecoration(
                color:  Colors.deepOrange[100],
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const Contact();
                  }));
                },
                child: const Center(
                  child: Text(
                    "Contact Us",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            Image.asset("images/splashScreen/8.png")
          ],
        ),
      ),
    );
  }
}
