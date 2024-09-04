import 'package:find_me_iti/core/models/imageList.dart';
import 'package:find_me_iti/feature/main_home/data/api_service.dart';
import 'package:find_me_iti/feature/main_home/presentation/widgets/animalCard.dart';
import 'package:flutter/material.dart';

class AnimalListView extends StatelessWidget {
  const AnimalListView({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiAnimalService().featchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var list = snapshot.data!;
            return ListView.builder(
              itemCount: list.length,
                itemBuilder: (context, index) => AnimalCard(
                   // imagePath: list[index].image,
                    imagePath: animals[index],
                    dogType: list[index].type,
                    dogBarking: list[index].barking.toString(),
                    dogEnergy: list[index].energy.toString(),
                    minLife: list[index].minLife.toString(),
                    maxLife: list[index].maxLife.toString(),
                    goodWStrangers: list[index].goodWithStrangers.toString(),

                    choosen: false));
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return  Center(
              child: CircularProgressIndicator(color: Colors.deepOrange.shade300,),
            );
          }
        });

 
  }
}
