
import"package:flutter/material.dart";
import 'package:flutter_app/Screens/table.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../checkout/controller/app_language.dart';
import '../controller2/product_controller.dart';
import '../views2/product_screen.dart';
import 'chair.dart';
import 'decor.dart';
import 'light.dart';


class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
   "sofa".tr,
    "light".tr,
    "outdoor".tr,
    "table".tr,
    "decore".tr
  ];
  late ProductController controller;
// first overwrite to
// clear the search text
  @override
  List<Widget> buildActions(BuildContext context) {
    controller = Get.put(ProductController());
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget buildLeading(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
    builder: ((controller) => IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    )));
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    return InkWell(
        onTap: (){

          Get.toNamed( query=="sofa"?'/product':
          query=="light"?'/light':
          query=="chair"?'/chair':

          query=="decore"?'/decore':'/table',);
        },
        child:Text("$query",style: TextStyle(fontSize: 30),));

  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    //
    List filternames=searchTerms.where((element) =>element.startsWith(query) ).toList();
    //
    return  ListView.builder(
             itemCount: query==""?searchTerms .length:filternames.length,
               itemBuilder: (context,i){
             return InkWell(
               onTap: (){
                query=query==""?searchTerms[i]:filternames[i];
                 showResults(context);
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context) =>
                         query=="sofa".tr?ProductScreen():
                         query=="light".tr?lightscreen():
                         query=="outdoor".tr?chairscreen():
                         query=="decore".tr?Decorscreen():tablescreen(),
                     ));
               },
                 child:Padding(
                   padding: const EdgeInsets.all(10),
                   child: Container(
                 child:
                query==" "?Text("${searchTerms[i]}",style: TextStyle(fontSize: 30),):
                     Text("${filternames[i]}",style: TextStyle(fontSize: 30)) ,
             ),
                 )
             );
           }
    );

  }
}





