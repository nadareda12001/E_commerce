import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/checkout/checkout/summary.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controller2/cart_controller.dart';
import '../controller/app_language.dart';
import '../payment.dart';
import 'address.dart';
import 'delivery_time.dart';

int currentpage = 0;

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

late CartController controller2;

class _CheckoutState extends State<Checkout> {
  PageController _controller = new PageController();
  List<Widget> pages = [
    const DeliveryTime(),
    const AddAddress(),
    const SummaryofAll(),
  ];
  @override
  void initState() {
    _controller;
  }

  late CartController controller2;
  @override
  Widget build(BuildContext context) {
    controller2 = Get.find<CartController>();

    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: ((controller) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 0.0,
                title: SizedBox(
                  height: 30,
                  child: Text(
                    "Check Out".tr,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                        // scrollDirection: Axis.horizontal,
                        controller: _controller,
                        itemCount: pages.length,
                        itemBuilder: (context, int index) {
                          return pages[index];
                        },
                        onPageChanged: (int index) {
                          setState(
                            () {
                              currentpage = index;
                            },
                          );
                        }),
                  ),
                  Container(
                      margin: const EdgeInsets.all(25),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            pages.length,
                            (index) {
                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                height: 8,
                                width: (index == currentpage) ? 40 : 10,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.indigo,
                                ),
                              );
                            },
                          ))),
                  const SizedBox(
                    height: 40,
                    width: 20,
                  ),
                  Row(
                    children: [
                      currentpage == 0
                          ? Container()
                          : Container(
                              height: 35,
                              margin:
                                  const EdgeInsets.only(left: 20, bottom: 50),
                              child: ElevatedButton(
                                // onPressed: (){},
                                onPressed: () {
                                  setState(() {
                                    currentpage--;
                                  });
                                },
                                child: Text(
                                  "Back".tr,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        margin: const EdgeInsets.only(left: 260, bottom: 50),
                        //color: Colors.black,
                        // Button
                        child: ElevatedButton(
                          child: Text(
                            "Next".tr,
                            // style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            if (currentpage == 0) {
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.bounceIn);
                            }
                            if (currentpage == 1) {
                              key2?.currentState!.save();
                              if (key2!.currentState!.validate()) {
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 100),
                                    curve: Curves.bounceIn);
                              }
                            }
                            if (currentpage == 2) {
                              Get.defaultDialog(
                                title: "Really want to proceed ?",
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
                                                  Colors.yellow)),
                                      onPressed: () {
                                        controller2.transactionCompleted();
                                      },
                                      child: Text(
                                        "Confirm",
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
                                        itemCount: controller2.cart.length,
                                        itemBuilder: (_, index) {
                                          return ListTile(
                                            leading: Container(
                                              width: 60,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          controller2
                                                              .cart[index]
                                                              .image!))),
                                            ),
                                            title: Text(
                                              controller2.cart[index].name!,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12),
                                            ),
                                            subtitle: Text(
                                              NumberFormat.currency(
                                                          decimalDigits: 0,
                                                          symbol: '')
                                                      .format(controller2
                                                          .cart[index].price) +
                                                  " x " +
                                                  controller2.cart[index].qty
                                                      .toString(),
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
                                          NumberFormat.currency(
                                                  decimalDigits: 0, symbol: '')
                                              .format(controller2
                                                  .grandTotal!.value),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}

void _confirmationDialog() {
  Get.defaultDialog(
    title: "Really want to proceed ?",
    actions: [
      ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)),
          onPressed: () {
            Get.back();
          },
          child: Text("Cancel")),
      ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.yellow)),
          onPressed: () {
            controller2.transactionCompleted();
          },
          child: Text(
            "Confirm",
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
            itemCount: controller2.cart.length,
            itemBuilder: (_, index) {
              return ListTile(
                leading: Container(
                  width: 60,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(controller2.cart[index].image!))),
                ),
                title: Text(
                  controller2.cart[index].name!,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                subtitle: Text(
                  NumberFormat.currency(decimalDigits: 0, symbol: '')
                          .format(controller2.cart[index].price) +
                      " x " +
                      controller2.cart[index].qty.toString(),
                  style: TextStyle(
                      fontFamily: "Poppins", color: Colors.white, fontSize: 10),
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
                  .format(controller2.grandTotal!.value),
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 12),
        )
      ],
    ),
  );
}
