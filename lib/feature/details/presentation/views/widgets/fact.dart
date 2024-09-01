import 'package:find_me_iti/core/styles/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Fact extends StatelessWidget {
   Fact({super.key, required this.dogName, required this.imagePath, required this.type, required this.age});
  final String dogName,imagePath,type,age;

  bool choosen = false;

  List<String> images = [];

  List<String> name = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Column(
        children: [
          Row(
            children: [
             // Text("  Sparky",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Text("$dogName ",style: Fonts.first,),
              /*InkWell(onTap: () {
                setState(() {
                  choosen = true;
                  images.add(
                    "${widget.imagePath}",
                  );
                  name.add("${widget.dogName}");
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Adapts(image:images, name:name, type:"", age:"age", choosen:true);
                  }));
                });

              },child: Icon(Icons.shopping_cart,size: 17,color: Colors.grey,)),*/
              const Spacer(),
              const Icon(Icons.female,size: 27,color: Colors.grey,)
            ],
          ),
          Row(
            children: [
              Text("$type ",style: Fonts.second),
              const Spacer(),
              Text("$age  month ",style: Fonts.second),
            ],
          ),
          const Row(children: [
            Icon(
              Icons.location_on,
              color: Colors.red,
              size: 24,
            ),
            Text(" 2.5 kms away",style:Fonts.third),

          ],)
        ],
      ),
    );
  }
}







// import 'package:find_me_iti/core/styles/styles.dart';
// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class Fact extends StatelessWidget {
//    Fact({super.key, required this.dogName, required this.imagePath, required this.type, required this.age});
//   final String dogName,imagePath,type,age;

//   bool choosen = false;

//   List<String> images = [];

//   List<String> name = [];

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 8),
//       child: Column(
//         children: [
//           Row(
//             children: [
//              // Text("  Sparky",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
//               Text("$dogName ",style: Fonts.first,),
//               /*InkWell(onTap: () {
//                 setState(() {
//                   choosen = true;
//                   images.add(
//                     "${widget.imagePath}",
//                   );
//                   name.add("${widget.dogName}");
//                   Navigator.push(context, MaterialPageRoute(builder: (_) {
//                     return Adapts(image:images, name:name, type:"", age:"age", choosen:true);
//                   }));
//                 });

//               },child: Icon(Icons.shopping_cart,size: 17,color: Colors.grey,)),*/
//               const Spacer(),
//               const Icon(Icons.female,size: 27,color: Colors.grey,)
//             ],
//           ),
//           Row(
//             children: [
//               Text("$type ",style: Fonts.second),
//               const Spacer(),
//               Text("$age  month ",style: Fonts.second),
//             ],
//           ),
//           const Row(children: [
//             Icon(
//               Icons.location_on,
//               color: Colors.red,
//               size: 24,
//             ),
//             Text(" 2.5 kms away",style:Fonts.third),

//           ],)
//         ],
//       ),
//     );
//   }
// }

/*import 'package:flutter/material.dart';

class Fact extends StatelessWidget {
  const Fact({super.key,  required this.dogName4, required this.dogAge4, required this.dogType4});
    final String  dogName4, dogAge4, dogType4;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("  $dogName4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Spacer(),
            Icon(Icons.female,size: 27,color: Colors.grey,)
          ],
        ),
        Row(
          children: [
            Text("   $dogType4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black38)),
            Spacer(),
            Text("   $dogAge4 months ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black38)),
          ],
        ),
        Row(children: [
          Icon(
            Icons.location_on,
            color: Colors.red,
            size: 24,
          ),
          Text(" 2.5 kms away",style: TextStyle(color: Colors.grey)),
        ],)
      ],
    );
  }
}*/