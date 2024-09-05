// ignore_for_file: camel_case_types
import 'package:find_me_iti/core/manager/navigation_bar_cubit.dart';
import 'package:find_me_iti/feature/advice/presentation/view/main_advice.dart';
import 'package:find_me_iti/feature/dailyTask/presentation/views/main_tasks.dart';
import 'package:find_me_iti/feature/main_home/presentation/mainHome.dart';
import 'package:find_me_iti/feature/random_fact_display/view/random_fact_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class NavigationBarr extends StatelessWidget {
 
  // ignore: non_constant_identifier_names
  List NavigationScreen = [
     const MainHome(),
    const MainTasks(),
     const RandomFactScreen(),
    const MainAdvice(),
  ];

  NavigationBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationCubit, int>(
        builder: (context, selectedIndex) {
      return BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          context.read<NavigationCubit>().changeTab(index);
        },
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        elevation:0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.task_outlined, ),label: 'Daily task',),
          BottomNavigationBarItem(icon: Icon(Icons.games,),label: 'Randoms',),
          BottomNavigationBarItem(icon: Icon(Icons.tips_and_updates,),label: 'Advice',),
        ],
        selectedItemColor:const Color.fromARGB(143, 255, 86, 34),
        unselectedItemColor: Colors.grey,);
      }),
      body: BlocBuilder<NavigationCubit, int>(
        builder: (context, selectedIndex) {
          return NavigationScreen[selectedIndex];
        },
      ),
    );
  }
}