
import 'package:find_me_iti/feature/dailyTask/presentation/views/widgets/body_daily_task.dart';
import 'package:find_me_iti/drawer_screen.dart';
import 'package:flutter/material.dart';

class FullTasks extends StatelessWidget {
  const FullTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
       appBar:  AppBar(
          title:const Text(
            "Don't Miss Tasks!",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),
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
    body:const BodyDailyTask(),
    );
  }
}