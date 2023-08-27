

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controller/app_language.dart';
import 'about_us.dart';
import 'chats.dart';
import 'contact_us.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
    builder: ((controller) =>Scaffold(
      appBar: AppBar(
        title:Text("Help".tr),
      ),
      body: Column(
        children: [
          Card(
            child: InkWell(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>const Contact_Us())),
              child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.contact_phone_rounded),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Contact Us".tr,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>About_Us()));

              },
              child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "About Us".tr,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Chats()));
              },
              child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(Icons.chat),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Chats".tr,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    )));
  }
}
