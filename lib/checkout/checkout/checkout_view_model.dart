import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../helpp_dir/about_us.dart';
import 'constants.dart';

class CheckoutViewModel extends GetxController{
 get index=>_index;
var _index=0;
Pages get pages=>_pages;
 Pages _pages = Pages.DeliveryTime;
 String? street1="",street2="",City="",State="",Country="";



void changeIndex(var i){
 _index=i;
 if(_index==1){
  _pages=Pages.AddAddress;
 }else if(_index==2){
  _pages=Pages.Summary;
 }else if(_index==3){
  Get.to(About_Us());

 }


}
Color getColor(int i) {
 if (i == _index) {
  return inProgressColor;
 } else if (i < _index) {
  return Colors.green;
 } else {
  return todoColor;
 }
}


}