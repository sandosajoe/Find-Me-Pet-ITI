// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// void added(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         contentPadding: const EdgeInsets.all(0),
//         content: Container(
//           padding: const EdgeInsets.all(20),
//           decoration: const BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(20)),
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Icon(
//                 Icons.check_circle_outline,
//                 color: Colors.green,
//                 size: 40,
//               ),
//               const SizedBox(height: 10),
//           GestureDetector(
//             onTap: () async {
             
//               const String googleMapsUrl =
//                   'https://www.google.com/maps/search/?api=1&query=40.7128,-74.0060';
//               if (await canLaunch(googleMapsUrl)) {
//                 await launch(googleMapsUrl);
//               } else {
//                 throw 'Could not open the map.';
//               }
//             },
//               child:const Text(
//                 "location",
//                 style: TextStyle(
//                   color: Colors.blue,
//                   decoration: TextDecoration.underline,
//                   fontSize: 16,
//                 ),
//               ),
//             // Text("Successfully added!", style: Fonts.successText),
//             ) ],
//           ),
//         ),
//         actions: [
//           /*TextButton(
//             onPressed: () {
//             },
//             child: Text(
//               'Show',
//               style: TextStyle(color: Colors.green),
//               //Color.fromARGB(255, 119, 210, 87)
//             ),
//           ),
//           SizedBox(width:90),*/
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('Close',style: TextStyle(color: Colors.red),),
//           ),
//         ],
//       );
//     },
//   );
// }



import 'package:find_me_iti/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void added(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(15),
        content: Container(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.red,
                opticalSize: 20,
                //size: 20,
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () async {
                  const String googleMapsUrl =
                      'https://www.google.com/maps/search/?api=1&query=40.7128,-74.0060';
                  if (await canLaunch(googleMapsUrl)) {
                    await launch(googleMapsUrl);
                  } else {
                    throw 'Could not open the map.';
                  }
                },
                child: const Text("Go To Location", style: Fonts.locations),
              )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Close',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      );
    },
  );
}