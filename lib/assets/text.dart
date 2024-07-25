import 'package:flutter/services.dart' show rootBundle;

Future<String> loadText() async {
  return await rootBundle.loadString('lib/assets/ziyaret_ashura.txt');
}
