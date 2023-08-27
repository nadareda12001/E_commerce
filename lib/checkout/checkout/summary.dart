import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controller2/cart_controller.dart';
import '../controller/app_language.dart';
import 'address.dart';


class SummaryofAll extends StatefulWidget {
  const SummaryofAll({Key? key}) : super(key: key);

  @override
  _SummaryofAllState createState() => _SummaryofAllState();
}

class _SummaryofAllState extends State<SummaryofAll> {
  late CartController controller2;
  @override
  Widget build(BuildContext context) {
  controller2 = Get.find<CartController>();
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
    builder: ((controller) =>

      Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        children: [
          SizedBox(height: 20),
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

                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  subtitle: Text(

                    NumberFormat.currency(decimalDigits: 0, symbol: '')
                        .format(controller2.cart[index].price) +
                        " x " +
                        controller2.cart[index].qty.toString(),

                    style: TextStyle(

                        fontSize: 20),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 12,),
          Container(
            // color: Colors.white,
            height:150,
            width:220,
            decoration: BoxDecoration(
              color: Colors.white,
                border: Border.all(
                  color: Colors.black54,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow:  const [
                  BoxShadow(
                      blurRadius: 2.0,

                  )],),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Text(
                  "Address Data".tr,
                  style: TextStyle(color: Colors.blue, fontSize: 22),
                ),
                Text(
                  " ${"${street1controller!.value.text},"
                      "${street2controller!.value.text},"
                      "\n${statecontroller!.value.text},"
                      "${citycontroller!.value.text},"
                      "\n${countryController!.value.text}"}",
                  style: const TextStyle( fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
