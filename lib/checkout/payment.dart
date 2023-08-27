import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/app_language.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  var _value;
  @override
  void initState() {
    _value = 0;
    super.initState();
  }

  changedval(var val) {
    setState(() {
      _value = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: ((controller) => Scaffold(
              appBar: AppBar(
                title: Text("Payment Methods".tr),
              ),
              body: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.all(21),
                    child: Row(
                      children: [
                        Image.asset(
                          "image/cash.png",
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Cash", style: TextStyle(fontSize: 18)),
                        const SizedBox(
                          width: 245,
                        ),
                        Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value) {
                            changedval(value);
                          },
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading:
                        Image.asset("image/ebay.png", width: 80, height: 80),
                    trailing: Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        changedval(value);
                      },
                    ),
                  ),
                  ListTile(
                    leading:
                        Image.asset("image/eway.png", width: 80, height: 80),
                    trailing: Radio(
                      value: 9,
                      groupValue: _value,
                      onChanged: (value) {
                        changedval(value);
                      },
                    ),
                  ),
                  ListTile(
                    leading: Image.asset("image/shopify.png",
                        width: 70, height: 70),
                    trailing: Radio(
                      value: 3,
                      groupValue: _value,
                      onChanged: (value) {
                        changedval(value);
                      },
                    ),
                  ),
                  ListTile(
                    leading:
                        Image.asset("image/visa.png", width: 70, height: 70),
                    trailing: Radio(
                      value: 4,
                      groupValue: _value,
                      onChanged: (value) {
                        changedval(value);
                      },
                    ),
                  ),
                ],
              ),
            )));
  }
}
