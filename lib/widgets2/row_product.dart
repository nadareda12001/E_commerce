import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/loginpage.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controller2/product_controller.dart';
import '../models2/airsoft.dart';
import '../Screens/sofa2.dart';


class RowProduct extends StatelessWidget {
  Airsoft ?airsoft;
  ProductController? controller;
  var user = FirebaseAuth.instance.currentUser;
  RowProduct({
    Key? key,
 this.airsoft,
     this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return //Row(
      //children: [
        Column(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    {
                      Get.to(() => sofascreen(),);
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                       airsoft!.image!,
                        height: 100,
                      width: 150,
                    ),
                  ),
                ),
                Container(
                    width: 70,
                    height: 30,
                    color: Colors.deepOrange,
                    child: Text(
                      "${airsoft!.offer}",
                      style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold
                          fontSize: 25),
                    ))
              ],
            ),
            Text(
              "${airsoft!.name}",
              style: TextStyle(fontSize: 20, color: Colors.blueAccent),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2,right: 8),
              child: Row(
                children: <Widget>[
                  Text(
                    "   ${NumberFormat.currency(decimalDigits: 0, symbol: '')
                        .format(airsoft!.price)} EGP",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Obx(() {
    Airsoft? selectedModel = controller!.cart!.firstWhereOrNull(
    (Airsoft selectedItem) =>
    selectedItem.id == airsoft!.id);
    if (selectedModel == null) {
    return IconButton(
    icon: Icon(Icons.add_shopping_cart_outlined,),

    color: Colors.blueAccent,
    onPressed: () { if(user==null){
      Get.defaultDialog(
        titleStyle: TextStyle(color: Colors.red),
        backgroundColor:
       Colors.white ,
             title:  "This process is rejected",

        content: Column(
        children: [
          Text("You must have an account "),
          Text("before this process")
        ],
        ),
        actions: [
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(
                      Colors.black)),
              onPressed: () {
                Get.back();
              },
              child: Text("Cancel")),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(
                      Colors.greenAccent)),
              onPressed: () {
                Get.off(LogIn());
              },
              child: Text(
                "Sign UP",
                style: TextStyle(color: Colors.black),
              ))
        ],
      );
    }else{
      controller!.addItemToCart(airsoft!);
    }}
    );
    } else {
    return _buildQty(selectedModel);
    }

                  }),

                ],
              ),
            ),
          ],
        );
  }

  Widget _buildQty(Airsoft selectedModel) {
    return Row(
      children: [
        IconButton(
       icon: Icon(Icons.delete,color: Colors.red),
            onPressed: () =>
                controller!.removeSelectedItemFromCart(selectedModel.id!),

        )
      ],
    );
  }
}
