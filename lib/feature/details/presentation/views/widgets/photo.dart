import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  const Photo({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Spacer(),
        Column(
          children: [Container(
            width: 70,
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(50, 236, 20, 114),
              shape: BoxShape.circle,
            ),
          ),
            const SizedBox(height: 80,),
            Container(
              width: 60,
              height: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(220, 121, 106, 107),
                shape: BoxShape.circle,
              ),
            ),],
        ),
        Container(
          width: 55,
          height: 50,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 161, 160, 126),
            //borderRadius: BorderRadius.only(topLeft: Radius.circular(360),bottomLeft: Radius.circular(360))
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 5,),
        Column(
          children: [Container(
            width: 40,
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromARGB(220, 155, 139, 144),
              shape: BoxShape.circle,
            ),
          ),
            const SizedBox(height: 20,),
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 98, 72, 82),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 90,),
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 70, 74, 89),
                shape: BoxShape.circle,
              ),
            ),],
        ),
        Column(
          children: [Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(
              color: Color.fromARGB(50, 20, 204, 236),
              shape: BoxShape.circle,
            ),
          ),
            const SizedBox(height: 70,),
            Container(
              width: 50,
              height: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(220, 197, 187, 144),
                shape: BoxShape.circle,
              ),
            ),],
        ),
        Container(
          width: 170,
          height: 300,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 236, 233, 114),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(360),bottomLeft: Radius.circular(360))
            //shape: BoxShape.rectangle,
          ),
          child: Center(
            child: Image.asset(
              //'images/dogs/download.png',
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
