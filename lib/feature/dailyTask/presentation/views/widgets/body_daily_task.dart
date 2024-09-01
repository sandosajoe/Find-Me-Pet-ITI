import 'package:find_me_iti/core/styles/styles.dart';
import 'package:find_me_iti/feature/dailyTask/presentation/views/widgets/task_list.dart';
import 'package:flutter/material.dart';
class BodyDailyTask extends StatelessWidget {
  const BodyDailyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20,),
        Text("Daily Tasks:", style:Fonts.tasks),
        SizedBox(height: 20,),
        Expanded(child:TaskList()),
      ],
    );
  }
}