import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


import '../utils/local_storage/localStorage.dart';

class AppLanguage extends GetxController {
 var AppLang = "ar";

  @override
  void onInit() async {
    super.onInit();
    LocalStorage _localStorage = LocalStorage();
    //i will store the value returned in appLang.
    AppLang = await _localStorage.languageSelected == null
        ? "ar"
        : await _localStorage.languageSelected;
    update();
    Get.updateLocale(Locale(AppLang));


  }

  void changeLanguage(String tye) async {
    LocalStorage _localStorage = LocalStorage();
    if (AppLang == tye) {
      return;
    }
    if (tye == "ar") {
      AppLang = "ar";
      _localStorage.saveLangData("ar");
    } else {
      AppLang = "en";
      _localStorage.saveLangData("en");
    }
    update();
  }
}
