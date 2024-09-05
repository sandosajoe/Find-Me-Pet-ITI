import 'package:find_me_iti/feature/dailyTask/data/task.dart';
import 'package:find_me_iti/feature/dailyTask/presentation/manager/cubit.dart';
import 'package:find_me_iti/feature/dailyTask/presentation/manager/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        final appCubit = BlocProvider.of<TaskCubit>(context);

        return ListView.builder(
          itemCount: task.length,
          itemBuilder: (context, index) {
            final task2 = task[index];
            final isDone = appCubit.isDone(task2.name);

            return CheckboxListTile(
              
              title: Column(
                children: [
                  Row(
                    children: [
                      Text(task2.name),
                    ],
                  ),
                   Divider(color: Colors.deepOrange.shade300,)
                ],
              ),
              value: isDone,
              activeColor: Colors.deepOrange[300],
              onChanged: (value) {
                appCubit.toggleDone(task2.name);
                
              },
            );
          },
        );
      },
    );
  }
}
