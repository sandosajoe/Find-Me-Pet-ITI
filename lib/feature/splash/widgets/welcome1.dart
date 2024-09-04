
import 'package:find_me_iti/core/styles/styles.dart';

import 'package:flutter/material.dart';


class Welcome1 extends StatelessWidget {
  const Welcome1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Container(
            margin:const EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
              color: Colors.deepOrange[100],
              borderRadius: BorderRadius.circular(900)
            ),
            child: Image.asset("images/splashScreen/2.png"),
          ),
          const SizedBox(height: 50,),
          const Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Text("Love Is A Four Legged \nWord" , style:Fonts.textStyle1),
            
          ),
          const SizedBox(height: 15,),
          const Padding(
            padding: EdgeInsets.only(left:45,right: 22),
            child: Text("Making for one happy Pet,choose the pet you loved and we will professionally help you.",softWrap: true,style: Fonts.textStyle2,),
          ),
          const SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.only(bottom: 20,left: 220,top: 50),
           // width: 40,
            child: Row(
              children: [
                Image.asset("images/splashScreen/swipe.png" ,height: 25,width: 25,),
                const Text("swipe left",style: Fonts.textStyle3,)
              ],
            ),
          )

        ],
      ),

    );
  }
}