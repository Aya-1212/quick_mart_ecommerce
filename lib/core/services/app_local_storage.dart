import 'package:hive/hive.dart';
class AppLocalStorage {
  static late Box user; 
  static init (){
    user = Hive.box("user");
  }

  static void cacheUserData (key,value){
    user.put(key, value);
  }
  
  static dynamic getCachedUserData (key){
    return user.get(key);
  }
}