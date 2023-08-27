
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/controller2/bindings/cart_binding.dart';
import 'package:flutter_app/sql/note%20screen.dart';

import 'package:flutter_app/views2/cart_screen.dart';
import 'package:flutter_app/views2/home.dart';



import 'package:flutter_app/views2/product_screen.dart';
import 'package:flutter_app/views2/splash_screen.dart';
import 'package:get/get.dart';


import 'Screens/chair.dart';
import 'Screens/decor.dart';
import 'Screens/light.dart';
import 'Screens/table.dart';

import 'catogry/pages/appliances.dart';
import 'catogry/pages/bath.dart';
import 'catogry/pages/cozybedroom.dart';
import 'catogry/pages/furniture.dart';
import 'catogry/pages/homedecor.dart';
import 'catogry/pages/kitchen.dart';
import 'checkout/translation.dart';
import 'controller2/bindings/Home_binding.dart';
import 'controller2/bindings/product_binding.dart';
import 'controller2/bindings/splash_binding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

bool? islogin;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );


  var user = FirebaseAuth.instance.currentUser;
  if(user==null) {
    islogin = false;
  }else{
    islogin= true;
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme:  getThemeDataLight() ,
      translations: Translation(),

      locale: Locale("en"),

      fallbackLocale: Locale("en"),
      getPages: [
        GetPage(
          name: '/note',
          page: () => noteScreen(),

        ),

        GetPage(
          name: '/home',
          page: () => HomePage(),
          binding: HomeBinding(),
        ),

        GetPage(

            name: '/Cart',
            page: () =>CartScreen(),
            binding: CartBinding()
        ),
        GetPage(
          name: '/furniture',
          page: () =>Furniture() ,

        ),
        GetPage(
          name: '/kitchen',
          page: () => Kitchen(),

        ),
        GetPage(
          name: '/bath',
          page: () => Bath(),

        ),
        GetPage(
          name: '/cozybedroom',
          page: () =>CozyBedRoom(),

        ),
        GetPage(
          name: '/homedecor',
          page: () =>HomeDecor(),

        ),
        GetPage(
          name: '/appliances',
          page: () => Appliances(),

        ),
        GetPage(
          name: '/product',
          page: () => ProductScreen(),
          binding: ProductBinding(),
        ),
        GetPage(
          name: '/chair',
          page: () => chairscreen(),
          binding:ProductBinding(),
        ),  GetPage(
          name: '/light',
          page: () => lightscreen(),
          binding: ProductBinding(),
        ),  GetPage(
          name: '/decore',
          page: () => Decorscreen(),
          binding: ProductBinding(),
        ),  GetPage(
          name: '/table',
          page: () => tablescreen(),
          binding: ProductBinding(),
        ),

        GetPage(
          name: '/splash',
          page: () => SplashScreen(),
          binding: SplashBinding(),
        ),

      ],
      initialRoute: '/splash',
    );
  }
}





