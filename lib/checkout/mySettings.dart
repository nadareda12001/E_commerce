import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/checkout/payment.dart';
import 'package:get/get.dart';



import 'controller/app_language.dart';
import 'helpp_dir/help.dart';
import 'mylangsettings.dart';

class MySettings extends StatefulWidget {
  const MySettings({Key? key}) : super(key: key);

  @override
  _MySettingsState createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  var _value;
  @override
  void initState() {
    _value = "en";
    super.initState();
  }

  changeVal(var val) {
    setState(() {
      _value = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
    builder: ((controller) =>Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Settings".tr,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder:
                (context)=>MyLangs())),
            child: Card(
              child: Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.language_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Languages".tr,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Payment())),
            child: Card(
              child: Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.payments_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Payment Methods".tr,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Help(),
                )),
            child: Card(
              child: Container(
                  margin: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.help),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Help".tr,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
        ],
      ),
    )));
  }

  _viewBottomSheet(BuildContext context) {
    showModalBottomSheet(
        elevation: 12,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        context: context,
        builder: (context) => Directionality(
            textDirection:
                _value == "en" ? TextDirection.ltr : TextDirection.rtl,
            child:
             ListView(
                children: [
                  SizedBox(height: 10),
                  Center(child: Text("Languages".tr,style:
                  TextStyle(color: Colors.pink,fontSize: 40),)),
                  SizedBox(height: 10,),
                  ListTile(
                    onTap: () {},
                    leading: Text(
                      "Arabic".tr,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    trailing: Radio(
                      value: "ar",
                      groupValue: _value,
                      onChanged: (val) {
                        changeVal(val);
                        Get.updateLocale(Locale(_value));
                      },
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Text("English".tr,
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    trailing: Radio(
                      value: "en",
                      groupValue: _value,
                      onChanged: (val) {
                        changeVal(val);
                        Get.updateLocale(Locale(_value));
                      },
                    ),
                  ),
                ],
              )),
    );
  }
}
