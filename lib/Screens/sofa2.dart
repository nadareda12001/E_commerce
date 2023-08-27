import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../checkout/controller/app_language.dart';

class sofascreen extends StatefulWidget {
  @override
  _sofascreenState createState() => _sofascreenState();
}
class _sofascreenState extends State<sofascreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
    builder: ((controller) => Scaffold(
      floatingActionButton: Container(
        width:330,
        child: FloatingActionButton.extended(
            onPressed: null, label:
            Center(
                child:
            Text("Add to your Cart".tr),
            ),
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blueAccent),
        actions: [
          Expanded(child: Container()),
          Icon(Icons.add_to_drive)
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset("image/sofa (1).jpeg"),
                ),
                Text(
                  "sofArt sofa".tr,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  "200x65x85 cm -",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  "Brown & Beige -".tr,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  "SO.O.3",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Row(children: [
                  Text(
                    "2000 EGP".tr,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.amberAccent),
                  ),
                  Container(
                    child: Text(
                      "- 50%",
                      style: TextStyle(fontSize: 25),
                    ),
                    width: 60,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black38,
                    ),
                  )
                ]),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Product Description".tr,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.blueAccent),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "made of metal and rattan plastic which is resistant to sunlight ."
    " provided with a cushion".tr,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Product Information".tr,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.blueAccent),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Availability:".tr,
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text("On Demand".tr, style: TextStyle(fontSize: 20))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Dimensions :".tr,
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text("200x65x85 cm", style: TextStyle(fontSize: 20))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Material:".tr,
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text("Metal , Rattan".tr, style: TextStyle(fontSize: 20))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Made In:".tr,
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    Text("EG".tr, style: TextStyle(fontSize: 20))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
