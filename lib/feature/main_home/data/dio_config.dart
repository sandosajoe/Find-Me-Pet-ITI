import 'package:dio/dio.dart';
import 'package:find_me_iti/feature/main_home/data/constants.dart';


class DioAnimalConfig {
  DioAnimalConfig._();

  static Dio? _dio;
  static const _timeOut = Duration(seconds: 6);

  static Dio getDio() {
    _dio ??= Dio()
      ..options.baseUrl = baseUrlAnimal
      ..options.receiveTimeout = _timeOut
      ..options.connectTimeout = _timeOut
      ..interceptors.add(
          LogInterceptor(requestHeader: true, responseBody: true, error: true));
    return _dio!;
  }
}
