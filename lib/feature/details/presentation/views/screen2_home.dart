import 'package:find_me_iti/core/styles/body_colors.dart';
import 'package:find_me_iti/feature/details/presentation/views/widgets/dog_profile.dart';
import 'package:flutter/material.dart';

class MainDetails extends StatelessWidget {
  final String dogName, imagePath, minLife, maxLife, goodWS;
  const MainDetails({super.key, required this.dogName, required this.imagePath, required this.minLife, required this.maxLife, required this.goodWS});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
      Container(
          decoration: GradientDecoration.gradientBoxDecoration,
          
        child: SafeArea(
          child: DogProfile(imagePath: imagePath, minLife: minLife, maxLife: maxLife, dogName: dogName, goodWS: goodWS),
        ),
      ),
    );
  }
}