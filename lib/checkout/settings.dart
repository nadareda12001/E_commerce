

// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import 'checkout/checkout_view.dart';
import 'controller/app_language.dart';
import 'mySettings.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final appthemee = GetStorage();//instance of get storage
bool? isDark;
class _MyHomePageState extends State<MyHomePage> {
  // var serverToken="AAAARhAMKes:APA91bEtO6pXg0uV8n2PFoQUTdDf7FAIo7YQQrUQ_pJZlbi0Cq00RtKcUARlFFuKErqGggCAIt0bvLHcls3mCie5Vidke_JQQofMdbyEPtrIOCkfctsHGQST63p_1qSBolU0WW5ZQ778 ";
  // var fbm = FirebaseMessaging.instance;
  //his method works when app is terminated

  // initialmessage()async{
  //  var message= FirebaseMessaging.instance.getInitialMessage();
  //  if(message!=null){
  //    Navigator.push(context, MaterialPageRoute(builder: (context)=>MySettings()));
  //  }
  // }
  // @override
  // void initState() {
  //  // initialmessage();
  //   fbm.getToken().then((value) {
  //     //firstly i get token of target app.
  //     String? token = value;
  //     print('the token is : $token');
  //   });
  //   //   //this method is used when notification is opened(it works in background)
  //   // FirebaseMessaging.onMessageOpenedApp.listen((event) {
  //   //   Navigator.push(
  //   //       context, MaterialPageRoute(builder: (context) =>const MySettings()));
  //   // });
  //   //i get notification data and print it in terminal.
  //   // FirebaseMessaging.onMessage.listen((event) {
  //   //   print("Notification data");
  //   //   print('${event.notification?.body}');
  //   //   AwesomeDialog(
  //   //     context: context,
  //   //     title: "hello",
  //   //     body: Text("${event.notification?.body}"),
  //   //   );
  //   // });
  //   super.initState();
  // }
  ////////////////
// SharedPreferences? _shredPref;
//
//   getThemeData()async{
//   light=await getSwitchState();
//   setState(() {
//
//   });
//   }
//   Future<bool> getSwitchState()async{
//   light=_shredPref!.getBool("theme")!;
//   return light;
//   }
//   @override
//   void initState() {
//    getSwitchState();
//     super.initState();
//   }

  @override
  void initState() {
   isDark=false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return GetBuilder<AppLanguage>(
      init: AppLanguage(),
      builder: ((controller) => Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MySettings(),
                  ),
                ),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Checkout()));
                    },
                    child: Text("Check Out".tr),
                  ),
                  SizedBox(
                    height: 10,
                  ),



                ],
              ),
            ),
          )),
    );
  }

// Future<bool> _saveThemeState(bool value) async{
//    SharedPreferences? pref = await _shredPref;
//   return pref!.setBool("theme",light);
//   }

}
