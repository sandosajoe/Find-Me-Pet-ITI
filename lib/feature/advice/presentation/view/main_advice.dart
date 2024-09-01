
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
        elevation:0,
        flexibleSpace:const AppBarShape(),
        title: const Text(
          "Pet Advice",
          style: Fonts.appbar
        ),
        centerTitle: true,

        actions: [
          IconButton(
            icon: const Icon(Icons.pets, color: Colors.white),
            onPressed: () {
            },
          ),
        ],
      ),
      drawer: const Drawer(child: DrawerScreen(),),
      body: const ListAdvice(),
    );
  }
}