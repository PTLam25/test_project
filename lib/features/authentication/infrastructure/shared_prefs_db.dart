import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Only for the testing project
@lazySingleton
class SharedPrefsDb {
  late final SharedPreferences _sharedPref;

  @factoryMethod
  static Future<SharedPrefsDb> create() async {
    final sharedPrefsDatabase = SharedPrefsDb();

    sharedPrefsDatabase._sharedPref = await SharedPreferences.getInstance();

    return sharedPrefsDatabase;
  }


}
