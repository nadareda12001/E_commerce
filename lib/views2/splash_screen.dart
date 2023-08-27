import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller2/splash_controller.dart';


class SplashScreen extends StatelessWidget {
  late SplashController controller;


  @override
  Widget build(BuildContext context) {
    controller = Get.find<SplashController>();
    return  Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height:700,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            // border: Border.all(color: Colors.grey, width: .5),
            // boxShadow: const [BoxShadow(color: blue, blurRadius: 3)]
          ),
          child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: Image(
                image: AssetImage(
                  "image/logo.jpg",
                ),
                height: 170,
              )),
        ),
      ),
    );
  }
}
