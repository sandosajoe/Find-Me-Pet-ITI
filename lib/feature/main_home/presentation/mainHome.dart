import 'package:find_me_iti/core/styles/app_bar_shape.dart';
import 'package:find_me_iti/feature/main_home/presentation/widgets/animalListView.dart';
import 'package:flutter/material.dart';

import '../../../../drawer_screen.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
          title:const  Text(
            "Browse Pet Details",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          flexibleSpace: const AppBarStyle()
          // Container(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [
          //         Colors.deepOrange.shade100,
          //         Colors.deepOrange.shade200,
          //         Colors.deepOrange.shade300,
          //       ],
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight,
          //     ),
          //   ),
          // ),
        ),
   
      drawer: const Drawer(child: DrawerScreen(),),
      body: const Column(
        children: [
         // RandomFact(),
          Expanded(child: AnimalListView()),
        ],
      ),
    );
  }
}
