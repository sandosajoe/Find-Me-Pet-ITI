import 'package:dio/dio.dart';
import 'package:find_me_iti/feature/main_home/data/constants.dart';
import 'package:find_me_iti/feature/main_home/data/dio_config.dart';
import 'package:find_me_iti/feature/main_home/data/dog_model.dart';

import '../../../core/network/api_exception.dart';

class ApiAnimalService {
  ApiAnimalService();
  static final ApiAnimalService apiAnimalService = ApiAnimalService();

  //get Age and Type

  Future<List<Dog>> featchData() async {
    Dio dio = DioAnimalConfig.getDio();

    try {
      Response response = await dio.get("$endPoint$apiKey");
      if (response.statusCode == 200) {
        List<Dog> dogdata = [];

        for (var i in response.data) {
          dogdata.add(Dog.fromJson(i));
        }
        return dogdata;
      } else {
        throw ApiException(response.statusMessage);
      }
    } on DioException catch (e) {
      throw ApiException(e.message);
    }
  }

  // Future<List<Dog>> fetchData() async {
  //   Dio dio = DioAnimalConfig.getDio();

  //   try {
  //     Response response = await dio.get("$endPoint$apiKey");

  //     if (response.statusCode == 200) {
  //       List<Dog> dogData = [];
  //       for (var i in response.data) {
  //         //Dog dog =Dog(image: i['image_link'], type: i['name'], barking: i['barking'], energy: i['energy']);
  //         dogData.add(Dog.fromJson(i));
  //       }
  //       // return dogData;
  //     }

  //     //return dataList.map((e) => Dog.fromJson(e)).toList();
  //     else {
  //       throw ApiException(response.statusMessage);
  //     }
  //   } on DioException catch (e) {
  //     throw ApiException(e.message);
  //   }
  // }
}
