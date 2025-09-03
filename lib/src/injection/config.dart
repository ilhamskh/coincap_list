import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  const Config();

  String get baseUrl => 'https://rest.coincap.io/v3';

  String get apiKey => dotenv.env['API_KEY'] ?? '';
}
