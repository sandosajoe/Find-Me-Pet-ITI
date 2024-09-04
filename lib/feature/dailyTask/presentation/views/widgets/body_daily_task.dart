import 'package:find_me_iti/feature/dailyTask/presentation/views/widgets/task_list.dart';
import 'package:flutter/material.dart';
class BodyDailyTask extends StatelessWidget {
  const BodyDailyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: const Column(
        children: [
         
          SizedBox(height: 20,),
          Expanded(child:TaskList()),
         
        ],
      ),
    );
  }
}