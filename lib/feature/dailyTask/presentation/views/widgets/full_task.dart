import 'package:find_me_iti/core/styles/styles.dart';
import 'package:find_me_iti/feature/advice/presentation/view/widgets/app_bar_shapes.dart';
import 'package:find_me_iti/feature/dailyTask/presentation/views/widgets/body_daily_task.dart';
import 'package:find_me_iti/drawer_screen.dart';
import 'package:flutter/material.dart';

class FullTasks extends StatelessWidget {
  const FullTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar:AppBar(
      elevation:0,
      flexibleSpace:const AppBarShape(),
      title: const Text(
          "Pet Tasks",
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
    body:const BodyDailyTask(),
    );
  }
}