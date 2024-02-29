import 'package:shared_preferences/shared_preferences.dart';

class Cache {
  final SharedPreferences sharedPreferences;

  Cache({required this.sharedPreferences});

  clearSharedPreferences() async {
    sharedPreferences.clear();
  }
}
