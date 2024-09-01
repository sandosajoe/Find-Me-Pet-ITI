import 'package:find_me_iti/feature/details/manager/cubit.dart';
import 'package:find_me_iti/feature/details/manager/state.dart';
import 'package:find_me_iti/feature/details/presentation/views/widgets/fact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'About.dart';
import 'photo.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.dogName, required this.imagePath, required this.type, required this.age});
  final String dogName,imagePath,type,age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              // context.read<AppCubit>().choosenHeart();
              // context.read<AppCubit>().isavailable();
              context.read<FavouriteCubit>().toggleFavorite(dogName);

            },
            child: BlocBuilder<FavouriteCubit, FavouriteState>(
              builder: (context, state) {
                bool isFavorite = context.read<FavouriteCubit>().isFavorite(dogName);

                return Icon(
                  Icons.favorite,
                  color: isFavorite ? Colors.red : const Color.fromARGB(129, 0, 0, 0),
                );
              },
            ),
          ),
          //Icon(Icons.shopping_cart)
        ],
      ),
      body: Column(
        children: [
          Fact(dogName: dogName, imagePath:imagePath, type: type, age: age,),
          Photo(imagePath: imagePath,),
          const About()
        ],
      ),
    );
  }
}









// import 'package:find_me_iti/feature/details/manager/cubit.dart';
// import 'package:find_me_iti/feature/details/manager/state.dart';
// import 'package:find_me_iti/feature/details/presentation/views/widgets/fact.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'About.dart';
// import 'photo.dart';

// class DetailBody extends StatelessWidget {
//   const DetailBody({super.key, required this.dogName, required this.imagePath, required this.type, required this.age});
//   final String dogName,imagePath,type,age;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           InkWell(
//             onTap: () {
//               // context.read<AppCubit>().choosenHeart();
//               // context.read<AppCubit>().isavailable();
//               context.read<FavouriteCubit>().toggleFavorite(dogName);

//             },
//             child: BlocBuilder<FavouriteCubit, FavouriteState>(
//               builder: (context, state) {
//                 bool isFavorite = context.read<FavouriteCubit>().isFavorite(dogName);

//                 return Icon(
//                   Icons.favorite,
//                   color: isFavorite ? Colors.red : Color.fromARGB(129, 0, 0, 0),
//                 );
//               },
//             ),
//           ),
//           //Icon(Icons.shopping_cart)
//         ],
//       ),
//       body: Column(
//         children: [
//           Fact(dogName: dogName, imagePath: imagePath, type: type, age: age),
//           //(dogName: dogName, imagePath:imagePath, type: type, age: age,),
//           Photo(imagePath: imagePath,),
//           About()
//         ],
//       ),
//     );
//   }
// }









// import 'package:find_me_iti/feature/details/manager/cubit.dart';
// import 'package:find_me_iti/feature/details/manager/state.dart';
// import 'package:find_me_iti/feature/details/presentation/views/widgets/fact.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'About.dart';
// import 'photo.dart';

// class DetailBody extends StatelessWidget {
//   const DetailBody({super.key, required this.dogName, required this.imagePath, required this.type, required this.age});
//   final String dogName,imagePath,type,age;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           InkWell(
//             onTap: () {
//               // context.read<AppCubit>().choosenHeart();
//               // context.read<AppCubit>().isavailable();
//               context.read<FavouriteCubit>().toggleFavorite(dogName);

//             },
//             child: BlocBuilder<FavouriteCubit, FavouriteState>(
//               builder: (context, state) {
//                 bool isFavorite = context.read<FavouriteCubit>().isFavorite(dogName);

//                 return Icon(
//                   Icons.favorite,
//                   color: isFavorite ? Colors.red : const Color.fromARGB(129, 0, 0, 0),
//                 );
//               },
//             ),
//           ),
//           //Icon(Icons.shopping_cart)
//         ],
//       ),
//       body: Column(
//         children: [
//          Fact(dogName: dogName, imagePath:imagePath, type: type, age: age,),
//           Photo(imagePath: imagePath,),
//           const About()
//         ],
//       ),
//     );
//   }
// }








/*
import 'package:find_me_iti/core/styles/styles.dart';
import 'package:flutter/material.dart';


class fact_detail extends StatefulWidget {
  const fact_detail({super.key, required this.dogName, required this.imagePath, required this.type, required this.age});
  final String dogName,imagePath,type,age;

  @override
  State<fact_detail> createState() => _fact_detailState();
}

class _fact_detailState extends State<fact_detail> {
  bool choosen = false;
  List<String> images = [];
  List<String> name = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          Row(
            children: [
             // Text("  Sparky",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Text("${widget.dogName} ",style: Fonts.first,),
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
              Spacer(),
              Icon(Icons.female,size: 27,color: Colors.grey,)
            ],
          ),
          Row(
            children: [
              Text("${widget.type} ",style: Fonts.second),
              Spacer(),
              Text("${widget.age}  month ",style: Fonts.second),
            ],
          ),
          Row(children: [
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
}*/