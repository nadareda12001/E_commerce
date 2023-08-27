import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/catogry/pages/sofa2.dart';
import 'package:get/get.dart';


import '../../checkout/controller/app_language.dart';
import 'filter.dart';

class Kitchen extends StatefulWidget {
  const Kitchen({Key? key}) : super(key: key);

  @override
  State<Kitchen> createState() => _KitchenState();
}

class _KitchenState extends State<Kitchen> {
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
                      "kitchen".tr,
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
                                      "image/1.jpg",
                                      width: 150,
                                    ),
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 50%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold
                                          fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "Kitchen ".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "5999 EGP".tr,
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
                                    "image/2.jpg",
                                    width: 150,
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
                              "kitchen storage".tr,
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
                                    "image/3.jpg",
                                    width: 150,
                                    height: 150,
                                  ),
                                ),
                                Container(
                                    width: 70,
                                    height: 30,
                                    color: Colors.deepOrange,
                                    child: Text(
                                      " - 56%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          // fontWeight: FontWeight.bold
                                          fontSize: 25),
                                    ))
                              ],
                            ),
                            Text(
                              "Arika kitchen units".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "949 EGP".tr,
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
                                    "image/4.jpg",
                                    width: 150,
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
                              "Kitchen".tr,
                              style: TextStyle(
                                  fontSize: 20, color: Colors.blueAccent),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "695 EGP".tr,
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
