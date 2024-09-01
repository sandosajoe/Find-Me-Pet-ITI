import 'package:dio/dio.dart';
import 'package:find_me_iti/feature/random_fact_display/data/constants.dart';


class DioConfig {
  DioConfig._();

  static Dio? _dio;
  static const _timeOut = Duration(seconds: 6);

  static Dio getDio() {
    _dio ??= Dio()
      ..options.baseUrl = baseUrl
      ..options.receiveTimeout = _timeOut
      ..options.connectTimeout = _timeOut
      ..interceptors.add(
          LogInterceptor(requestHeader: true, responseBody: true, error: true));
    return _dio!;
  }
}
