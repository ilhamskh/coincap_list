import 'package:coincap_list/src/app/app.dart';
import 'package:coincap_list/src/injection/composition_root.dart';
import 'package:coincap_list/src/injection/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  const config = Config();
  final compositionResult = await const CompositionRoot(config).compose();

  runApp(CoincapListApp(result: compositionResult));
}
