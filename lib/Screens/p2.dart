import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../catogry/category.dart';
import '../checkout/controller/app_language.dart';
import 'search.dart';

class p2 extends StatefulWidget {
  @override
  _p2State createState() => _p2State();
}

class _p2State extends State<p2> {
  var Screen = ['/product', '/light', '/chair', '/table', '/decore'];
  List<Image> images = <Image>[
    Image.asset(
      "image/nono.png",
      height: 150,
      width: 150,
    ),
    Image.asset(
      "image/lihgt.jpg",
      height: 150,
      width: 150,
    ),
    Image.asset(
      "image/chair.jpg",
      height: 150,
      width: 150,
    ),
    Image.asset(
      "image/table.jpg",
      height: 150,
      width: 150,
    ),
    Image.asset(
      "image/Decore.jpg",
      height: 150,
      width: 150,
    ),
  ];
  List<Image> images2 = <Image>[
    Image.asset(
      "image/17.jpg",
      height: 150,
      width: 150,
    ),
    Image.asset(
      "image/14.jpg",
      height: 150,
      width: 150,
    ),
    Image.asset(
      "image/16.jpg",
      height: 150,
      width: 150,
    ),
    Image.asset(
      "image/20.jpg",
      height: 150,
      width: 150,
    ),
    Image.asset(
      "image/13.jpg",
      height: 150,
      width: 150,
    ),
  ];

  List<String> names = <String>[
    "Sofa".tr,
    "Lighting".tr,
    "Outdoor".tr,
    "Tables".tr,
    "Home Decor".tr
  ];
  List<String> names2 = <String>[
    "Treadmill".tr,
    "Kettle-bells".tr,
    "Stationary Bike".tr,
    "Chair".tr,
    "Domani Kitchen".tr
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: ((controller) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                actions: [
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "image/logo.jpg",
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "What are you looking for".tr,
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 15),
                        ),
                        SizedBox(
                          width: 120,
                        ),
                        IconButton(
                          onPressed: () {
                            showSearch(
                                context: context,
                                delegate: CustomSearchDelegate());
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Colors.blueAccent,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Explore".tr,
                          style: TextStyle(fontSize: 25),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        IconButton(
                            onPressed: () {
                              Get.to(Category());
                            },
                            icon: Icon(Icons.arrow_forward))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Column(
                              children: [
                                images[index],
                                Text(
                                  names[index],
                                  style: TextStyle(fontSize: 25),
                                )
                              ],
                            ),
                            onTap: () {
                              {
                                Get.toNamed(Screen[index].toString());
                              }
                            },
                          );
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text(
                          "Best Seller".tr,
                          style: TextStyle(fontSize: 25, color: Colors.red),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        // Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Column(
                              children: [
                                images2[index],
                                Text(
                                  names2[index],
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            onTap: () {
                              {}
                            },
                          );
                        }),
                  ),
                ],
              ),
            )));
  }
}
