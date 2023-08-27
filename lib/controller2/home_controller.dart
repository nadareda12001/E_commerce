import 'package:flutter/cupertino.dart';
import 'package:flutter_app/loginpage.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/myAccount.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';


import '../Screens/p2.dart';
import '../catogry/category.dart';
import '../checkout/settings.dart';
import '../views2/cart_screen.dart';
import 'bindings/cart_binding.dart';


class HomeController extends GetxController {
  static HomeController get to => Get.find();

  var currentIndex = 0.obs;

  final pages = <String>['/p2', '/p3', '/category', '/cart','/page'];

  void changePage(int index) {
    currentIndex.value = index;
    Get.offNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/p2')
      return GetPageRoute(
        settings: settings,
        page: () => p2(),

      );

    if (settings.name == '/p3')
      return GetPageRoute(
        settings: settings,
         page: () => islogin! ?const MyAccount():const LogIn(),


      );

    if (settings.name == '/category')
      return GetPageRoute(
        settings: settings,
        page: () => Category(),

      );
    if (settings.name == '/cart')
      return GetPageRoute(
        settings: settings,
        page: () => CartScreen(),
    binding: CartBinding(),

      );
      if (settings.name == '/page')
        return GetPageRoute(
       settings: settings,
      page: () =>MyHomePage()

    );

    return null;
  }
}