
import 'package:find_me_iti/core/styles/styles.dart';
import 'package:find_me_iti/feature/advice/presentation/view/widgets/app_bar_shapes.dart';
import 'package:find_me_iti/feature/advice/presentation/view/widgets/list_advice.dart';
import 'package:find_me_iti/drawer_screen.dart';
import 'package:flutter/material.dart';


class MainAdvice extends StatelessWidget {
  const MainAdvice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:const  Text(
            "For Your Pet ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrange.shade100,
                  Colors.deepOrange.shade200,
                  Colors.deepOrange.shade300,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
      drawer: const Drawer(child: DrawerScreen(),),
      body: Container(
        
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.orange.shade100,
                Colors.orange.shade200,
                Colors.deepOrange.shade100,
                Colors.deepOrange.shade300,
               
                
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        child: const ListAdvice()),
    );
  }
}