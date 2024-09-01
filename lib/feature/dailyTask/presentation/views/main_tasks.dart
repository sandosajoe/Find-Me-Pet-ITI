import 'package:find_me_iti/feature/dailyTask/presentation/views/widgets/full_task.dart';
import 'package:flutter/material.dart';

class MainTasks extends StatelessWidget {
  const MainTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FullTasks(),
      ),
    );
  }
}