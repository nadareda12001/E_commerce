import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../checkout/controller/app_language.dart';

class lightscreen extends StatefulWidget {
  @override
  _lightscreenState createState() => _lightscreenState();
}

class _lightscreenState extends State<lightscreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: ((controller) => Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.blueAccent),
              backgroundColor: Colors.white,
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text(
                      "lighting".tr,
                      style: TextStyle(fontSize: 25, color: Colors.blueAccent),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
                ],
              ),
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(9),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  "image/1663631067917.jpg",
                                  width: 150,
                                ),
                              ),
                              Container(
                                  width: 90,
                                  height: 40,
                                  color: Colors.deepOrange,
                                  child: Text(
                                    " - 46%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ))
                            ],
                          ),
                          Text(
                            "YL245 Ceiling".tr,
                            style: TextStyle(
                                fontSize: 20, color: Colors.blueAccent),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "2000 EGP".tr,
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.blueAccent,
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  "image/1663631067889.jpg",
                                  width: 150,
                                  height: 150,
                                ),
                              ),
                              Container(
                                  width: 90,
                                  height: 40,
                                  color: Colors.deepOrange,
                                  child: Text(
                                    " - 36%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ))
                            ],
                          ),
                          Text(
                            "Light Square".tr,
                            style: TextStyle(
                                fontSize: 20, color: Colors.blueAccent),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "3000 EGP".tr,
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.blueAccent,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  "image/1663631067930.jpg",
                                  width: 150,
                                ),
                              ),
                              Container(
                                  width: 90,
                                  height: 40,
                                  color: Colors.deepOrange,
                                  child: Text(
                                    " - 66%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ))
                            ],
                          ),
                          Text(
                            "YL145 Ceiling".tr,
                            style: TextStyle(
                                fontSize: 20, color: Colors.blueAccent),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "2000 EGP".tr,
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.blueAccent,
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  "image/1663631067903.jpg",
                                  width: 150,
                                ),
                              ),
                              Container(
                                  width: 90,
                                  height: 40,
                                  color: Colors.deepOrange,
                                  child: Text(
                                    " - 26%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ))
                            ],
                          ),
                          Text(
                            "Light circle".tr,
                            style: TextStyle(
                                fontSize: 20, color: Colors.blueAccent),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "3000 EGP".tr,
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.blueAccent,
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ))));
  }
}
