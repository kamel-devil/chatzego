import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class StoredString {
  static const String appId = '566626575';
  static const String appSignKey = '0f7078547e81eaac296880799d07e2ae95dfdb02eb689ea78657c3ea51775294';
}

class DataManagement {
  static get loadEnvFile => dotenv.load(fileName: '.env');

  static getSecretData(String key) => dotenv.env[key];
}

Future<void> copyText(text) async =>
    await Clipboard.setData(ClipboardData(text: text.toString()));

