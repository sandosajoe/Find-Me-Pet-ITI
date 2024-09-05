import 'package:find_me_iti/core/styles/app_bar_shape.dart';
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
          flexibleSpace: const AppBarStyle()
        
        ),
      drawer: const Drawer(child: DrawerScreen(),),
      body: const ListAdvice(),
    );
  }
}