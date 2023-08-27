import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/catogry/pages/sofa2.dart';
import 'package:get/get.dart';

import '../../checkout/controller/app_language.dart';
import 'filter.dart';

class Furniture extends StatefulWidget {
  const Furniture({Key? key}) : super(key: key);

  @override
  State<Furniture> createState() => _FurnitureState();
}

class _FurnitureState extends State<Furniture> {
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
                    Text(
                      "Furniture".tr,
                      style: TextStyle(fontSize: 25, color: Colors.blueAccent),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    InkWell(
                        onTap: () {
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => filterscreen()));
                          }
                        },
                        child: Text("filter".tr,
                            style: TextStyle(color: Colors.blueAccent)))
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
                                InkWell(
                                  onTap: () {
                                    {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  sofascreen2()));
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      "image/18.jpg",
                                      width: 150,
                                    ),
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 35%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold
                                          fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "Storage Bed".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "5299 EGP".tr,
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
                                    "image/19.jpg",
                                    width: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 24%",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "Set Sofa".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "6440 EGP".tr,
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
                                    "image/20.jpg",
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 18%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold
                                          fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "Aldora Recliner".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "11099 EGP".tr,
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
                                    "image/21.jpg",
                                    width: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 32%",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "Dining Table".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "5555 EGP".tr,
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
