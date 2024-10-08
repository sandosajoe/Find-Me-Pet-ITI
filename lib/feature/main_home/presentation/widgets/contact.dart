
import 'package:find_me_iti/core/styles/app_bar_shape.dart';
import 'package:find_me_iti/core/styles/body_colors.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
          title:const  Text(
            "Contact",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          flexibleSpace: const AppBarStyle()
       
        ),
      body:  Container(
         decoration:GradientDecoration.gradientBoxDecoration,
        //  BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [
        //         Colors.white,
        //         Colors.orange.shade100,
        //         Colors.orange.shade200,
        //         Colors.deepOrange.shade100,
        //         Colors.deepOrange.shade300,
               
                
        //       ],
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //     ),
        //   ),
        child: Column(
            children: [
           
              const SizedBox(height: 35,),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Icon(Icons.facebook ,color: Colors.blue[400],)),
              ),
               const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 15),
               child: InkWell(
                onTap: () {
                  
                },
                child: const Icon(Icons.snapchat ,color: Colors.black,)),
              ),
               const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 15),
               child: InkWell(
                onTap: () {
                  
                },
                child: const Icon(Icons.phone,color: Colors.black,)),
              ),
               const SizedBox(height: 25,),
               Padding(
                padding: const EdgeInsets.only(top: 25, right: 15),
               child: InkWell(
                onTap: () {
                  
                },
                child: Icon(Icons.message,color: Colors.green[900],)),
              ),
              Image.asset("images/splashScreen/3.png",width: double.infinity,height:324,)
                
              
            ],
          ),
      )
    );
  }
}
