import 'package:dio/dio.dart';

final class ApiKeyInterceptor extends Interceptor {
  final String apiKey;

  const ApiKeyInterceptor({required this.apiKey});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] = 'Bearer $apiKey';
    super.onRequest(options, handler);
  }
}
