import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefss;
late Box box;

class AppInitial {
  static Future<void> setup() async {
    prefss = await SharedPreferences.getInstance();
    await Hive.initFlutter();
    box = await Hive.openBox('box');
  }
}
