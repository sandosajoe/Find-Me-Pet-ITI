
import 'package:find_me_iti/core/styles/body_colors.dart';
import 'package:find_me_iti/core/styles/styles.dart';
import 'package:find_me_iti/feature/details/manager/cubit.dart';
import 'package:find_me_iti/feature/details/manager/state.dart';
import 'package:find_me_iti/feature/details/presentation/views/widgets/tab_bar_parts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DogProfile extends StatelessWidget {
  final String dogName, imagePath, minLife, maxLife, goodWS;

  const DogProfile({super.key, required this.imagePath,required this.minLife, required this.maxLife,required this.dogName, required this.goodWS});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:GradientDecoration.gradientBoxDecoration,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    //bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(imagePath), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 30,
                
                
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: 30,
                right: 30,
                child: InkWell(
                  onTap: () {
                    context.read<FavouriteCubit>().toggleFavorite(dogName);
                  },
                  child: BlocBuilder<FavouriteCubit, FavouriteState>(
                    builder: (context, state) {
                      bool isFavorite =
                      context.read<FavouriteCubit>().isFavorite(dogName);
      
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.favorite,
                          color: isFavorite
                              ? Colors.red
                              : Colors.white,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(dogName, style:Fonts.first),
      
                Text(" min Life: $minLife ", style:Fonts.third),
                Text(" max Life:$maxLife \n", style: Fonts.third),
                const SizedBox(height: 15),
                TabBarParts(goodWS: goodWS,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}