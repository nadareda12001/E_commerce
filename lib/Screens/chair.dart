import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../checkout/controller/app_language.dart';

class chairscreen extends StatefulWidget {


  @override
  _chairscreenState createState() => _chairscreenState();
}

class _chairscreenState extends State<chairscreen> {
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
              child: Text("Outdoor".tr,style: TextStyle(fontSize: 25,color: Colors.blueAccent),
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
                          "image/chair (1).jpg",
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
                  Text("Hanging chair ".tr, style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                  Row(
                    children: <Widget>[
                      Text(
                        "949 EGP".tr,
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
                          "image/chair (2).jpg",
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
                  Text("Printove".tr, style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
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
                          "image/1663631067862.jpg",
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
                  Text("Short Chair".tr, style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                  Row(
                    children: <Widget>[
                      Text(
                        "1000 EGP".tr,
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
                          "image/1663631067876.jpg",
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
                  Text("Printove2".tr, style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                  Row(
                    children: <Widget>[
                      Text(
                        "1600 EGP".tr,
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
    ))); ;
  }
}
