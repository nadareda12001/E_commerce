// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:our_final_proj/checkout/controller/app_language.dart';
// import 'package:our_final_proj/views2/home.dart';
//
// import '../catogry/pages/page1.dart';
// import '../catogry/pages/page2.dart';
// import '../catogry/pages/page3.dart';
// import '../catogry/pages/page4.dart';
//
// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({Key? key}) : super(key: key);
//
//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }
//
// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   int _currentIndex = 0;
//   PageController? _controller;
//   @override
//   void initState() {
//     _controller = PageController();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<AppLanguage>(
//         init: AppLanguage(),
//         builder: ((controller) => Scaffold(
//               body: PageView(
//                 onPageChanged: (index) {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//                 controller: _controller,
//                 children: const [Page1(), Page2(), Page3(), Page4()],
//               ),
//               floatingActionButtonLocation:
//                   FloatingActionButtonLocation.miniCenterFloat,
//               floatingActionButton: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   FloatingActionButton(
//                     backgroundColor: Colors.grey,
//                     onPressed: () {
//                       if (_currentIndex != 0) {
//                         _controller?.jumpToPage(--_currentIndex);
//                       } else {
//                         _controller?.jumpToPage(3);
//                       }
//                     },
//                     child: Text('before'.tr,
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87)),
//                   ),
//                   SizedBox(
//                     width: 200,
//                   ),
//                   FloatingActionButton(
//                       backgroundColor: Colors.grey,
//                       onPressed: () {
//                         if (_currentIndex == 3) {
//                           //_controller?.jumpToPage(0);
//                           Get.to(HomePage());
//                         } else {
//                           _controller?.jumpToPage(++_currentIndex);
//                         }
//                       },
//                       child: Text(
//                         'next'.tr,
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, color: Colors.black87),
//                       )),
//                 ],
//               ),
//             )));
//   }
// }
