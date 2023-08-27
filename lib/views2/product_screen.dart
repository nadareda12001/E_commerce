import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter_app/views2/cart_screen.dart';
import '../controller2/bindings/cart_binding.dart';
import '../controller2/product_controller.dart';
import '../widgets2/row_product.dart';

class ProductScreen extends StatelessWidget {
  late ProductController controller;

  @override
  Widget build(BuildContext context) {
    controller = Get.find<ProductController>();

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blueAccent),
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          'Sofa',
          style: TextStyle(
            color: Colors.blueAccent,
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Obx(
            () => controller.cart!.isNotEmpty
                ? InkWell(
                    onTap: () => Get.to(()=>CartScreen(), binding: CartBinding()) ,
                    child: Badge(
                      child: const Icon(Icons.shopping_cart,color: Colors.blueAccent,),
                      badgeColor: Colors.red,
                      badgeContent: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text(
                          '${controller.cart!.length}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                : const Icon(Icons.shopping_cart),
          ),
       ]
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
      
        itemCount: controller.list!.length,
        itemBuilder: (context, index) {
          return RowProduct(
            airsoft: controller.list![index],
            controller: controller,
          );
        }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),





    );
  }
}
