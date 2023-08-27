
import 'package:flutter_app/checkout/utils/Arabic.dart';
import 'package:flutter_app/checkout/utils/English.dart';
import 'package:get/get_navigation/get_navigation.dart';



class Translation extends Translations{
  @override
  // TODO: implement keys
  //keys(refers to what are languages in your app.
  Map<String, Map<String, String>> get keys => {
   "en":en,
    "ar":ar,

  };


}