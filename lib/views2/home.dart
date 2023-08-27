

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../controller2/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/p2',
        onGenerateRoute: controller.onGenerateRoute,
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(  Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon( Icons.person_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon( Icons.shopping_cart_sharp,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ],

          unselectedItemColor: Colors.blueAccent,
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.indigo,
          onTap: controller.changePage,
        ),
      ),
    );
  }
}
