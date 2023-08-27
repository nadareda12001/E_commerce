import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


import '../controller/app_language.dart';
import 'help.dart';

class About_Us extends StatefulWidget {
  const About_Us({Key? key}) : super(key: key);

  @override
  _About_UsState createState() => _About_UsState();
}

class _About_UsState extends State<About_Us> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
    builder: ((controller) => Scaffold(
      body: SafeArea(
        child: ListView(
          children:[
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(
                      context, MaterialPageRoute(builder: (context) => Help()))),
            ),
            Column(
            children: [
              Center(
                child: Text(
                  "About Us",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(

                  margin: EdgeInsets.only(left: 10),
                  alignment: Alignment.topLeft,
                  child: Text("Terms of Use", style: TextStyle(fontSize: 19))),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                    "Welcome to homeFurn . HomeFurn is a social platform connecting home owners and home professionals into a nem world of home design ."),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                      "These terms of use sets fourth agreement between you and homefurn .. it governs your use of the products")),

            ],
          ),
        ]),
      ),
    )));
  }
}
