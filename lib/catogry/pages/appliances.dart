import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/catogry/pages/sofa2.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'package:get/get.dart';



import '../../checkout/controller/app_language.dart';
import 'filter.dart';

class Appliances extends StatefulWidget {
  const Appliances({Key? key}) : super(key: key);

  @override
  State<Appliances> createState() => _AppliancesState();
}

class _AppliancesState extends State<Appliances> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
    builder: ((controller) =>Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueAccent),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Appliances".tr,
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
                child:
                Text("filter".tr, style: TextStyle(color: Colors.blueAccent)))
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
                                      builder: (context) => sofascreen2()));
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              "image/22.jpg",
                              width: 150,
                            ),
                          ),
                        ),
                        Container(
                            width: 70,
                            height: 30,
                            color: Colors.deepOrange,
                            child: Text(
                              " - 7%",
                              style: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold
                                  fontSize: 25),
                            ))
                      ],
                    ),
                    Text(
                      "Stand Fan".tr,
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "450 EGP".tr,
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
                            "image/23.jpg",
                            width: 150,
                          ),
                        ),
                        Container(
                            width: 70,
                            height: 30,
                            color: Colors.deepOrange,
                            child: Text(
                              " - 33%",
                              style:
                              TextStyle(color: Colors.white, fontSize: 25),
                            ))
                      ],
                    ),
                    Text(
                      "Water Heater".tr,
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "1760 EGP".tr,
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
                            "image/24.jpg",
                            width: 150,
                            height: 150,
                          ),
                        ),
                        Container(
                            width: 70,
                            height: 30,
                            color: Colors.deepOrange,
                            child: Text(
                              " - 12%",
                              style: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold
                                  fontSize: 25),
                            ))
                      ],
                    ),
                    Text(
                      "Beko DishWasher".tr,
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "11000 EGP".tr,
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
                            "image/25.jpg",
                            width: 150,
                          ),
                        ),
                        Container(
                            width: 70,
                            height: 30,
                            color: Colors.deepOrange,
                            child: Text(
                              " - 21%",
                              style:
                              TextStyle(color: Colors.white, fontSize: 25),
                            ))
                      ],
                    ),
                    Text(
                      "Purity Gas hob",
                      style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "15199 EGP".tr,
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
