import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../checkout/checkout/checkout_view.dart';
import '../checkout/mySettings.dart';
import '../controller2/cart_controller.dart';
import '../widgets2/row_cart.dart';


class CartScreen extends StatelessWidget {
  late CartController controller;

  @override
  Widget build(BuildContext context) {
    controller = Get.find<CartController>();

    return Scaffold(
      appBar: AppBar(
        title:const  Text("Your Cart"),
        centerTitle: true,
        leading:
           IconButton(icon: Icon(Icons.settings_rounded),
             onPressed: (){Get.to(MySettings());},),


      ),
      body: Container(
        margin:  EdgeInsets.all(20.0),
        child: Obx(
          () => controller.cart.isEmpty
              ? const Center(
                  child: Text("Your cart is empty"),
                )
              : Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.separated(
                          itemCount: controller.cart.length,
                          separatorBuilder: (_, __) => Divider(),
                          itemBuilder: (context, index) {
                            return RowCart(
                              airsoft: controller.cart[index],
                              index: index,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Grand Total : ${NumberFormat.currency(
                                decimalDigits: 0,
                                symbol: '',
                              ).format(
                                controller.grandTotal!.value,
                              )} EGP" ,
                            ),
                            ElevatedButton(
                              onPressed: () {
                               // _confirmationDialog();
                                Get.to(Checkout());
                              },

                              child: Container(
                                color: Colors.blue,
                                width: double.infinity,
                                child: Center(
                                  child: Text(
                                    "Check Out".tr,
                                    style: TextStyle(color: Colors.black,fontSize: 20,),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  void _confirmationDialog() {
    Get.defaultDialog(
      title: "Really want to proceed ?".tr,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)),
            onPressed: () {
              Get.back();
            },
            child: Text("Cancel".tr)),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            onPressed: () {
              controller.transactionCompleted();
            },
            child: Text(
              "Confirm".tr,
              style: TextStyle(color: Colors.black),
            ))
      ],
      backgroundColor: Color(0xff4D4D4D),
      titleStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontSize: 17,
          fontWeight: FontWeight.bold),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300,
            height: 200,
            child: ListView.separated(
              separatorBuilder: (_, i) => Divider(),
              itemCount: controller.cart.length,
              itemBuilder: (_, index) {
                return ListTile(
                  leading: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(controller.cart[index].image!))),
                  ),
                  title: Text(
                    controller.cart[index].name!,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                  subtitle: Text(

                        NumberFormat.currency(decimalDigits: 0, symbol: '')
                            .format(controller.cart[index].price) +
                        " x " +
                        controller.cart[index].qty.toString(),

                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 10),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),

          SizedBox(
            height: 5,
          ),
          Text(
            "Total  EGP " +
                NumberFormat.currency(decimalDigits: 0, symbol: '')
                    .format(controller.grandTotal!.value),

            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 12),
          )
        ],
      ));
  }
}
