import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
void image_bigger(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(7),
        content: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close',style: TextStyle(color: Colors.orange),),
          ),
        ],
      );
    },
  );
}