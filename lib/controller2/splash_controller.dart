import 'dart:async';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../views2/home.dart';



class SplashController extends GetxController {
  GetStorage box = GetStorage();

  startChecking() {
    Timer(Duration(seconds: 2), () {

      Get.to(()=> //OnBoardingScreen());

          HomePage());



    });
  }

  @override
  void onReady() {
    startChecking();
    super.onReady();
  }
}
