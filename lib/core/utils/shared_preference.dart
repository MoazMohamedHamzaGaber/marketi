import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference{
  static late SharedPreferences sharedPreference;

  static init() async{
    sharedPreference=await SharedPreferences.getInstance();
  }

 static dynamic getDate({
    required String key,
}){
   return sharedPreference.get(key);
  }



 static Future<bool> saveData({
    required String key,
    required dynamic value,
}){
    if(value is String) {
      return sharedPreference.setString(key, value);
    }
    if(value is int) {
      return sharedPreference.setInt(key, value);
    }if(value is double) {
      return sharedPreference.setDouble(key, value);
    }
    return sharedPreference.setBool(key, value);
  }
}
