import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../checkout/controller/app_language.dart';
import 'class.dart';
import 'class2.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);
  @override
  State<Category> createState() => _CategoryState();
}
class _CategoryState extends State<Category> {
  List<Model> list1 = [
    Model('image/i (1).png', 'chair'.tr),
    Model('image/i (2).png', 'table'.tr),
    Model('image/o (1).png', 'sofa'.tr),
    Model('image/o (2).png', 'desk'.tr),
    Model('image/o (3).png', 'bed'.tr),
    Model('image/o (4).png', 'cupboard'.tr),
  ];
  List<Model_2> list2 = [
    Model_2('image/o (5).png', 'nightstand'.tr),
    Model_2('image/o (6).png', 'bookcase'.tr),
    Model_2('image/o (7).png', 'dresser'.tr),
    Model_2('image/o (8).png', 'cofee table'.tr),
    Model_2('image/o (9).png', 'coat stand'.tr),
    Model_2('image/o (10).png', 'shose cabinet'.tr)
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
    builder: ((controller) => DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('New'.tr),
              ),
              Tab(
                child: Text('Old'.tr),
              )
            ],
          ),
          title: Text('Category'.tr),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          centerTitle: true,
        ),
        drawer: Drawer(
            child: Column(
          children: [
            SafeArea(
                child: Title(
                    color: Colors.black,
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'All Categories'.tr,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ))),
            SizedBox(
              height: 10,
            ),
            ListTile(
                onTap: () {
                  Get.toNamed('kitchen');
                },
                leading: Text(
                  'Kitchen'.tr,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                trailing: Icon(Icons.arrow_forward_ios)),
            SizedBox(
              height: 10,
            ),
            ListTile(
                onTap: () {
               Get.toNamed('cozybedroom');
                },
                leading: Text(
                  'Cozy bedroom'.tr,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                trailing: Icon(Icons.arrow_forward_ios)),
            SizedBox(
              height: 10,
            ),
            ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed('bath');
                },
                leading: Text(
                  'Bath'.tr,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                trailing: Icon(Icons.arrow_forward_ios)),
            SizedBox(
              height: 10,
            ),
            ListTile(
                onTap: () {
                  Get.toNamed('furniture');
                },
                leading: Text(
                  'Furniture'.tr,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                trailing: Icon(Icons.arrow_forward_ios)),
            SizedBox(
              height: 10,
            ),
            ListTile(
                onTap: () {
                  Get.toNamed('decore');
                },
                leading: Text(
                  'Home Decor'.tr,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                trailing: Icon(Icons.arrow_forward_ios)),
            SizedBox(
              height: 10,
            ),
            ListTile(
                onTap: () {
                  Get.toNamed('appliances');
                },
                leading: Text(
                  'Appliances'.tr,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                trailing: Icon(Icons.arrow_forward_ios)),
          ],
        )),
        body: TabBarView(
          children: [
            ListView.separated(
              itemCount: list1.length,
              itemBuilder: (context, index) =>
                  contain(list1[index].img, list1[index].text),
              separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
            ),
            ListView.separated(itemCount: list2.length,
              itemBuilder: (context, index) =>
                  contain(list2[index].img_1, list2[index].text_1),
              separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),),
          ],
        ),
      ),
    )));
  }
  Widget contain(img, text) => Container(
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.black26,
            child: Container(child: Image.network(img)),
          ),
          Container(
              alignment: Alignment.center,
              width: 100,
              height: 30,
              margin: EdgeInsets.only(top: 260, left: 20),
              color: Colors.blueGrey,
              child: Text(
                text,
                style: TextStyle(fontSize: 20),
              )),
          SizedBox(height: 15)
        ]),
      );
}
