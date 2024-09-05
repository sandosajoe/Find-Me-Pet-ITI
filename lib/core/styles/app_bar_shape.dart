import 'package:flutter/material.dart';

class AppBarStyle extends StatelessWidget {
  const AppBarStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepOrange.shade50,
            Colors.deepOrange.shade100,
            Colors.deepOrange.shade200,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
