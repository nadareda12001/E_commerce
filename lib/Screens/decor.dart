import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../checkout/controller/app_language.dart';

class Decorscreen extends StatefulWidget {
  @override
  _DecorscreenState createState() => _DecorscreenState();
}

class _DecorscreenState extends State<Decorscreen> {
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
                        "Home Decor".tr,
                        style:
                            TextStyle(fontSize: 25, color: Colors.blueAccent),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text("filter".tr,
                        style: TextStyle(color: Colors.blueAccent))
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
                                    "image/table (3).jpg",
                                    width: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 44%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold
                                          fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "Seggada Rug".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "1339 EGP".tr,
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
                                    "image/table (4).jpg",
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 57%",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "lines Decor".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "7895 EGP".tr,
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
                                    "image/1663631067780.jpg",
                                    width: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 44%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold
                                          fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "Short Tree".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "739 EGP".tr,
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
                                    "image/1663631067804.jpg",
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 47%",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "Table Decor".tr,
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
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
