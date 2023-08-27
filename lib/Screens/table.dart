import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../checkout/controller/app_language.dart';


class tablescreen extends StatefulWidget {
  @override
  _tablescreenState createState() => _tablescreenState();
}

class _tablescreenState extends State<tablescreen> {
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
                        "Tables".tr,
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
                                    "image/table (1).jpg",
                                    width: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 55%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold
                                          fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "MAG.A.04 Center ",
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
                                    "image/table (2).jpg",
                                    width: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 60%",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "STELS.CT.003".tr,
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
                                    "image/1663631067827.jpg",
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 59%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold
                                          fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "table.A.04 Center".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "1500 EGP".tr,
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
                                    "image/1663631067846.jpg",
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
                                          color: Colors.white, fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "Table 13.003".tr,
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
