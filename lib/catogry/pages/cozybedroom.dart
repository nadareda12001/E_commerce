import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../checkout/controller/app_language.dart';

class CozyBedRoom extends StatefulWidget {
  const CozyBedRoom({Key? key}) : super(key: key);

  @override
  State<CozyBedRoom> createState() => _CozyBedRoomState();
}

class _CozyBedRoomState extends State<CozyBedRoom> {
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
              child: Text("Bed Room".tr,style: TextStyle(fontSize: 25,color: Colors.blueAccent),
              ),),
            Expanded(child: Container(),),
            Text("filter".tr,style: TextStyle(color: Colors.blueAccent))
          ],
        ),
      ),body: ListView(
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
                          "image/bed1 (1).jpg",
                          width: 150,
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
                                fontSize: 25
                            ),
                          ))
                    ],
                  ),
                  Text("Bed 15s".tr, style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                  Row(
                    children: <Widget>[
                      Text(
                        "5949 EGP".tr,
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 30,),
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
                          "image/bed1 (2).jpg",
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
                                color: Colors.white,
                                fontSize: 25),
                          ))
                    ],
                  ),
                  Text("Bed 456 ".tr, style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                  Row(
                    children: <Widget>[
                      Text(
                        "695 EGP".tr,
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 30,),
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
                          "image/bed1 (3).jpg",
                          width: 150,
                          height: 150,
                        ),
                      ),
                      Container(
                          width: 70,
                          height: 30,
                          color: Colors.deepOrange,
                          child: Text(
                            " - 36%",
                            style: TextStyle(
                                color: Colors.white,
                                // fontWeight: FontWeight.bold
                                fontSize: 25
                            ),
                          ))
                    ],
                  ),
                  Text("Bed New".tr, style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                  Row(
                    children: <Widget>[
                      Text(
                        "10000 EGP".tr,
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 30,),
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
                          "image/18.jpg",
                          width: 150,
                        ),
                      ),
                      Container(
                          width: 70,
                          height: 30,
                          color: Colors.deepOrange,
                          child: Text(
                            " - 42%",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25),
                          ))
                    ],
                  ),
                  Text("Bed 98h ".tr, style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                  Row(
                    children: <Widget>[
                      Text(
                        "6600 EGP".tr,
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 30,),
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
