// import 'package:device_preview/device_preview.dart';
// import 'package:find_me_iti/feature/splash/splashScreen.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// void main() {
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => MyApp(),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       locale: DevicePreview.locale(context),
//       builder: DevicePreview.appBuilder,
//       home: splashScreen(),
//     );
//   }
// }
import 'package:device_preview/device_preview.dart';
import 'package:find_me_iti/core/manager/navigation_bar_cubit.dart';
import 'package:find_me_iti/feature/dailyTask/presentation/manager/cubit.dart';
import 'package:find_me_iti/feature/details/manager/cubit.dart';
import 'package:find_me_iti/feature/random_fact_display/data/api_service.dart';
import 'package:find_me_iti/feature/random_fact_display/manager/fact_bloc.dart';

import 'package:find_me_iti/feature/splash/splashScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FavouriteCubit()),
        BlocProvider(create: (context) => TaskCubit()),
        BlocProvider(create: (context) => FactBloc(FactApiService.api)),
         BlocProvider(create: (context) => NavigationCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: const SplashScreen(),
      ),
    );
  }
}
