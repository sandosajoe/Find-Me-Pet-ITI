// import 'package:find_me_iti/feature/main_home/presentation/mainHome.dart';
// import 'package:find_me_iti/feature/random_fact_display/view/random_fact_screen.dart';
// import 'package:flutter/material.dart';

// class NavigationBar extends StatefulWidget {
//   const NavigationBar({super.key});

//   @override
//   State<NavigationBar> createState() => _HomeState();
// }

// class _HomeState extends State<NavigationBar> {
//   int _selected=0;
//   void _Tapped(int index) {
//     setState(() {
//       _selected= index;
//     });
//   }
//   int value = 0;
//   List NavigationScreen = [
//     const MainHome(),
//     RandomFactScreen()
//     // BodyDailyTask(),
//     // pageview(),
//     // MainAdvice(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selected,
//         onTap: _Tapped,
//         showSelectedLabels: true,
//         showUnselectedLabels: false,
//         backgroundColor: Colors.transparent,
//         elevation:0,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home',),
//           //BottomNavigationBarItem(icon: Icon(Icons.task_outlined, ),label: 'Daily task',),
//           BottomNavigationBarItem(icon: Icon(Icons.games,),label: 'Randoms',),
//           //BottomNavigationBarItem(icon: Icon(Icons.tips_and_updates,),label: 'Advice',),
//         ],
//         selectedItemColor:const Color.fromARGB(143, 255, 86, 34),
//         unselectedItemColor: Colors.grey,
//       ),
//       body: NavigationScreen[_selected],
//     );
//   }
// }











import 'package:find_me_iti/feature/advice/presentation/view/main_advice.dart';
import 'package:find_me_iti/feature/dailyTask/presentation/views/main_tasks.dart';
import 'package:find_me_iti/feature/main_home/presentation/mainHome.dart';
import 'package:find_me_iti/feature/random_fact_display/view/random_fact_screen.dart';
import 'package:flutter/material.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({super.key});

  @override
  State<navigationBar> createState() => _HomeState();
}

class _HomeState extends State<navigationBar> {
  int _selected=0;
  void _Tapped(int index) {
    setState(() {
      _selected= index;
    });
  }
  int value = 0;
  
  // ignore: non_constant_identifier_names
  List NavigationScreen = [
    const MainHome(),
  
    const MainTasks(),
     const RandomFactScreen(),
    const MainAdvice(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        currentIndex: _selected,
        onTap: _Tapped,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Colors.orange[100],
        elevation:0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.task_outlined, ),label: 'Daily task',),
          BottomNavigationBarItem(icon: Icon(Icons.games,),label: 'Randoms',),
          BottomNavigationBarItem(icon: Icon(Icons.tips_and_updates,),label: 'Advice',),
        ],
        selectedItemColor:const Color.fromARGB(143, 255, 86, 34),
        unselectedItemColor: Colors.grey,
      ),
      body: NavigationScreen[_selected],
    );
  }
}