import 'package:coincap_list/src/core/interceptors/api_key_interceptor.dart';
import 'package:coincap_list/src/core/interceptors/logging_interceptor.dart';
import 'package:coincap_list/src/injection/config.dart';
import 'package:dio/dio.dart';

final class DioClient {
  const DioClient._();

  static Dio build(String baseUrl, {String? apiKey}) {
    const config = Config();

    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {'Content-Type': 'application/json'},
      ),
    );
    dio.interceptors.add(DioLoggingInterceptor());
    if (config.apiKey.isNotEmpty) {
      dio.interceptors.add(ApiKeyInterceptor(apiKey: config.apiKey));
    }

    return dio;
  }
}
