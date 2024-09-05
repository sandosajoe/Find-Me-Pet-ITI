import 'package:find_me_iti/core/styles/app_bar_shape.dart';
import 'package:find_me_iti/core/styles/body_colors.dart';
import 'package:flutter/material.dart';

class AboutOrganization extends StatelessWidget {
   const AboutOrganization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          title:const  Text(
            "About Us",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          flexibleSpace:const AppBarStyle(),
        
        ),
      body:  Container(
        decoration: GradientDecoration.gradientBoxDecoration,
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70, right:50, left: 50),
              child: Text(
                  "Welcome to FIND ME PET organization, a dedicated animal welfare organization committed to rescuing, rehabilitating, and rehoming animals in need.\n Our mission is to provide a safe haven for animals, offering them the love  they deserve.\n We work to advocate for animal rights, educate the community about responsible pet ownership, and promote spaying and neutering to reduce the number of homeless animals.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                  softWrap: true),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(top: 25, right: 15),
              child: Text(
                "Thanks For Trusting us , Take care",
                style: TextStyle(
                  color: Color.fromARGB(255, 113, 65, 51),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            
              
            
    
          ],
        ),
      
      ),
    );
  }
}





