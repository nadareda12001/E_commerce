import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


import '../controller/app_language.dart';

class DeliveryTime extends StatefulWidget {
  const DeliveryTime({Key? key}) : super(key: key);

  @override
  _DeliveryTimeState createState() => _DeliveryTimeState();
}

class _DeliveryTimeState extends State<DeliveryTime> {

var value;
@override
  void initState() {
   setState(() {
     value=0;
   });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return
      GetBuilder<AppLanguage>(
          init: AppLanguage(),
    builder: ((controller) =>
      Column(
     children: [
       SizedBox(height: 50,),
     RadioListTile(
       activeColor: Colors.blue,
         title: Text("Standered Delivery".tr,style: TextStyle(fontSize: 20),),
         subtitle: Text("\norder will be delivered between 2&5 days".tr),
         value:100, groupValue: value, onChanged: (val){
         setState(() {
           value=val;
         });
     }

     ),
       SizedBox(height: 40,),
       RadioListTile(
           activeColor: Colors.blue,
           title: Text("Next Day Delivery".tr,style: TextStyle(fontSize: 20),),
           subtitle: Text("\nplace your order before 6AM and your order will be delivered tomorrow".tr),
           value:200,
           groupValue: value, onChanged: (val){
         setState(() {
           value=val;
         });
       }

       ),
       SizedBox(height: 40,),
       RadioListTile(
           activeColor: Colors.blue,
           title: Text("Nominated Delivery".tr,style: TextStyle(fontSize: 20),),
           subtitle: Text("\npick a particular date from calendar and order will be delivered that day".tr),
           value:300,
           groupValue: value, onChanged: (val){
         setState(() {
           value=val;
         });
       }

       )
      ],
    )));
  }
}
