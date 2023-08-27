import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controller/app_language.dart';
import 'help.dart';

class Contact_Us extends StatefulWidget {
  const Contact_Us({Key? key}) : super(key: key);

  @override
  _Contact_UsState createState() => _Contact_UsState();
}

class _Contact_UsState extends State<Contact_Us> {
  TextEditingController? _controller;
  TextEditingController? _controllerpass;
  TextEditingController? firstName;
  TextEditingController? lastName;
  TextEditingController? _controllermsg;

  GlobalKey<FormState>? _key;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _key = GlobalKey();
    _controllerpass = TextEditingController();
    _controller = TextEditingController();
    firstName = TextEditingController();
    lastName = TextEditingController();
    _controllermsg = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GetBuilder<AppLanguage>(
        init: AppLanguage(),
    builder: ((controller) => Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.topLeft,
            child: IconButton(
                icon: Icon(Icons.cancel_sharp,size: 30,),
                onPressed: () => Navigator.pop(
                    context, MaterialPageRoute(builder: (context) => Help()))),
          ),
          Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.topLeft,
              child:  Text(
                "Contact Us".tr,
                style: TextStyle(fontSize: 30),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _key,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: firstName,
                        validator: (value) =>
                            value!.isEmpty ? "this field is required ! ".tr : null,
                        decoration:  InputDecoration(
                          labelText: "First name".tr,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: lastName,
                        validator: (value) =>
                            value!.isEmpty ? "this field is required ! " .tr: null,
                        decoration: InputDecoration(
                          labelText: "Last name".tr,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _controller,
                        validator: (value) =>
                            value!.isEmpty ? "this field is required ! " .tr: null,
                        decoration:  InputDecoration(
                          labelText: "Email".tr,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: _controllerpass,
                        validator: (value) =>
                            value!.isEmpty ? "this field is required !" .tr: null,
                        decoration: InputDecoration(
                          labelText: "Telephone".tr,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 8,
                        controller: _controllermsg,
                        validator: (value) =>
                            value!.isEmpty ? "this field is required !".tr : null,
                        decoration:InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          hintText: "Message".tr,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 190,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_key!.currentState!.validate()) {
                            String username = _controller!.value.text;
                            String password = _controllerpass!.value.text;
                            Navigator.pop(context);
                          }
                        },
                        child: Text("Send".tr),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      )))
    );
  }
}
