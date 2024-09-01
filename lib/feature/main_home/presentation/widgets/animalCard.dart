
import 'package:find_me_iti/core/styles/styles.dart';
import 'package:find_me_iti/feature/details/presentation/views/widgets/detailBody.dart';
import 'package:flutter/material.dart';


import 'image_bigger.dart';

class AnimalCard extends StatelessWidget {
  AnimalCard({super.key, required this.imagePath, required this.dogName, required this.dogAge, required this.dogType, required this.choosen});
  final String imagePath,dogName,dogAge, dogType;
  final bool choosen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Container(
        margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              width: 1.6, color: const Color.fromARGB(143, 255, 86, 34)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 140,
              margin: EdgeInsets.all(13),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: InkWell(
                  onTap: () {
                    image_bigger(context, imagePath);
                  },
                  child: Container(
                    child: Image.asset(
                      "$imagePath",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    "$dogName",
                    style: Fonts.dogName,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 10),
                  child: Text(
                    "$dogType",
                    style: Fonts.dogType,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.date_range_sharp,
                        color: Colors.deepOrange[200],
                      ),
                      Text(
                        " $dogAge months",
                        style: Fonts.dogAge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            //Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) {
                      return DetailBody(dogName: dogName, imagePath: imagePath, type: dogType, age: dogAge,);
                    }));
              },
              child: Icon(
                  Icons.info_rounded,size: 28,
                  color:Colors.orange
              ),
            )
            /*Padding(
                    padding:const EdgeInsets.only(bottom: 70, left: 30, top: 30),
                    child: InkWell(
                      onTap: () {
                        context.read<AppCubit>().choosenHeart();
                      },
                      child: Icon(
                        Icons.favorite,
                        color: context.read<AppCubit>().heart
                            ? Colors.orange
                            : Color.fromARGB(129, 0, 0, 0),
                      ),
                    ),
                  )*/
          ],
        ),
      ),
    );
  }
}














// import 'package:find_me_iti/core/styles/styles.dart';
// import 'package:find_me_iti/feature/details/presentation/views/screen2_home.dart';
// import 'package:find_me_iti/feature/main_home/manager/cubit.dart';
// import 'package:find_me_iti/feature/main_home/manager/state.dart';
// import 'package:find_me_iti/feature/main_home/presentation/widgets/image_bigger.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AnimalCard extends StatelessWidget {
//   const AnimalCard(
//       {super.key,
//       required this.imagePath,
//       required this.dogName,
//       required this.dogType,
//       required this.dogAge,
//       required this.choosen});
//   final String imagePath;
//   final String dogName, dogAge, dogType;
//   final bool choosen;
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AppCubit, AppState>(
//         builder: (context, state) {
//           return SizedBox(
//             height: 140,
//             child: Container(
//               margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 border: Border.all(
//                     width: 1.6, color: const Color.fromARGB(143, 255, 86, 34)),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 5,
//                     blurRadius: 7,
//                     offset: const Offset(0, 3), // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Container(
//                     width: 120,
//                     margin:const EdgeInsets.all(13),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(30),
//                       child: InkWell(
//                         onTap: () {
//                           image_bigger(context, imagePath);
//                         },
//                         // image_bigger(context, imagePath);
//                         //ima

//                         child: Container(
//                           child: Image.asset(
//                             "$imagePath",
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(500),
//                     ),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10, left: 10),
//                         child: Text(
//                           dogName,
//                           style: Fonts.dogName,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 6, left: 10),
//                         child: Text(
//                           dogType,
//                           style: Fonts.dogType,
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10, left: 10),
//                         child: Row(
//                           children: [
//                             Icon(
//                               Icons.date_range_sharp,
//                               color: Colors.deepOrange[200],
//                             ),
//                             Text(
//                               " $dogAge months",
//                               style: Fonts.dogAge,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   InkWell(
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (_) {
//                           return Details(dogName: dogName, imagePath: imagePath, type: dogType, age: dogAge,);
//                         }));
//                       },
//                       child: Icon(Icons.info_rounded,
//                           size: 28, color: Colors.orange)),
//                   /*Padding(
//                     padding:const EdgeInsets.only(bottom: 70, left: 30, top: 30),
//                     child: InkWell(
//                       onTap: () {
//                         context.read<AppCubit>().choosenHeart();
//                       },
//                       child: Icon(
//                         Icons.favorite,
//                         color: context.read<AppCubit>().heart
//                             ? Colors.orange
//                             : Color.fromARGB(129, 0, 0, 0),
//                       ),
//                     ),
//                   )*/
//                 ],
//               ),
//             ),
//           );
//         },
//         listener: (context, state) {});
//   }

//   // Widget build(BuildContext context) {
//   //   return BlocConsumer<AppCubit, AppState>(
//   //       builder: (context, state) {
//   //         return SizedBox(
//   //           height: 140,
//   //           child: Container(
//   //             margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
//   //             decoration: BoxDecoration(
//   //               color: Colors.white,
//   //               borderRadius: BorderRadius.circular(30),
//   //               border: Border.all(
//   //                   width: 1.6, color: const Color.fromARGB(143, 255, 86, 34)),
//   //               boxShadow: [
//   //                 BoxShadow(
//   //                   color: Colors.grey.withOpacity(0.5),
//   //                   spreadRadius: 5,
//   //                   blurRadius: 7,
//   //                   offset: const Offset(0, 3), // changes position of shadow
//   //                 ),
//   //               ],
//   //             ),
//   //             child: Row(
//   //               children: [
//   //                 Container(
//   //                   //width: 140,
//   //                   margin: const EdgeInsets.all(13),
//   //                   child: ClipRRect(
//   //                     borderRadius: BorderRadius.circular(30),
//   //                     child: InkWell(
//   //                       onTap: () {
//   //                         Navigator.push(context,
//   //                             MaterialPageRoute(builder: (_) {
//   //                           return Screen2Home(
//   //                               dogName2: dogName,
//   //                               dogAge2: dogAge,
//   //                               dogType2: dogType,
//   //                               imagePath2: imagePath);
//   //                         }));
//   //                       },
//   //                       child: Image.asset(
//   //                         "$imagePath",
//   //                         fit: BoxFit.contain,
//   //                       ),
//   //                     ),
//   //                   ),
//   //                   decoration: BoxDecoration(
//   //                     borderRadius: BorderRadius.circular(500),
//   //                   ),
//   //                 ),
//   //                 Column(
//   //                   children: [
//   //                     Padding(
//   //                       padding: const EdgeInsets.only(top: 10, left: 10),
//   //                       child: Text(
//   //                         "$dogName",
//   //                         style: Fonts.dogName,
//   //                       ),
//   //                     ),
//   //                     Padding(
//   //                       padding: const EdgeInsets.only(top: 6, left: 10),
//   //                       child: Text(
//   //                         "$dogType",
//   //                         style: Fonts.dogType,
//   //                       ),
//   //                     ),
//   //                     Padding(
//   //                       padding: const EdgeInsets.only(top: 10, left: 10),
//   //                       child: Row(
//   //                         children: [
//   //                           Icon(
//   //                             Icons.date_range_sharp,
//   //                             color: Colors.deepOrange[200],
//   //                           ),
//   //                           Text(
//   //                             " $dogAge months",
//   //                             style: Fonts.dogAge,
//   //                           ),
//   //                         ],
//   //                       ),
//   //                     ),
//   //                   ],
//   //                 ),
//   //                 SizedBox(
//   //                   width: 20,
//   //                 ),
//   //                 Padding(
//   //                   padding:
//   //                       const EdgeInsets.only(bottom: 70, left: 30, top: 30),
//   //                   child: InkWell(
//   //                     onTap: () {
//   //                       context.read<AppCubit>().choosenHeart();
//   //                     },
//   //                     child: Icon(
//   //                       Icons.favorite,
//   //                       color: context.read<AppCubit>().heart
//   //                           ? Colors.orange
//   //                           : Color.fromARGB(129, 0, 0, 0),
//   //                     ),
//   //                   ),
//   //                 )
//   //               ],
//   //             ),
//   //           ),
//   //         );
//   //       },
//   //       listener: (context, state) {});
//   // }
// }
