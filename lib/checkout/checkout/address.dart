import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/app_language.dart';
import 'checkout_view_model.dart';

GlobalKey<FormState>? key2;
TextEditingController? street1controller;
TextEditingController? street2controller;
TextEditingController? citycontroller;
TextEditingController? statecontroller;
TextEditingController? countryController;

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  var val;
  @override
  void initState() {
    val = 0;
    key2 = GlobalKey();
    street1controller = TextEditingController();
    street2controller = TextEditingController();
    citycontroller = TextEditingController();
    statecontroller = TextEditingController();
    countryController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: ((controller) =>SingleChildScrollView (
          child: Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                    children: [
                  RadioListTile(
                      title: Text(
                        "Billing Address is the same as delivery address".tr,
                        style: TextStyle(fontSize: 22),
                      ),
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      }),
                  Form(
                    key: key2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: street1controller,
                          validator: (value) {
                            value!.isEmpty
                                ? "this field is required ! ".tr
                                : null;
                          },
                          decoration: InputDecoration(
                            labelText: "Street 1".tr,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: street2controller,
                          validator: (value) => value!.isEmpty
                              ? "this field is required ! ".tr
                              : null,
                          decoration: InputDecoration(
                            labelText: "Street 2".tr,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: citycontroller,
                          validator: (value) => value!.isEmpty
                              ? "this field is required ! ".tr
                              : null,
                          decoration: InputDecoration(
                            labelText: "City".tr,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: statecontroller,
                          validator: (value) => value!.isEmpty
                              ? "this field is required ! ".tr
                              : null,
                          decoration: InputDecoration(
                            labelText: "State".tr,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          controller: countryController,
                          validator: (value) => value!.isEmpty
                              ? "this field is required ! ".tr
                              : null,
                          decoration: InputDecoration(
                            labelText: "Country".tr,
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
        )));
  }
}
