import 'package:flutter/material.dart';

class GradientDecoration {
  static BoxDecoration get gradientBoxDecoration {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.deepOrange.shade50,
          Colors.deepOrange.shade100,
          Colors.deepOrange.shade50,
          Colors.deepOrange.shade100,
          Colors.deepOrange.shade200,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }
}


