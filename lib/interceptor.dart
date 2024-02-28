import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class AppInterceptor {
  AppInterceptor() {
    final dio = Modular.get<Dio>();

    dio.interceptors.clear();

    dio.interceptors.add(
      PrettyDioLogger(
        request: false,
        responseHeader: false,
      ),
    );
  }
}
