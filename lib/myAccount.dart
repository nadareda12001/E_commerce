import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'checkout/controller/app_language.dart';
import 'loginpage.dart';


class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  List<String> data = [];

  @override
  void initState() {
    super.initState();
    getEmail();
  }

  getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    String email = prefs.getString("userEmail") ?? "";
    data.add("Email: $email");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
    builder: ((controller) =>Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.white,
    title:  Text(
    'My Account'.tr,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Colors.indigo),
    ),
    actions: [
    IconButton(
    onPressed: () async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => LogIn()));
    },
    icon: const Icon(Icons.logout),
    color: Colors.grey,
    )
    ],
    elevation: 0.5,
    ),
    body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    children: [
    const SizedBox(
    height: 30,
    ),
    const CircleAvatar(
    radius: 100,
    backgroundImage: AssetImage(
    "image/logo.jpg",
    )),
    const SizedBox(
    height: 30,
    ),
    Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: ListView.separated(
    itemCount: data.length,
    itemBuilder: (BuildContext context, int index) {
    return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
    tileColor: Colors.blue[900],
    title: Text(data[index],
    style: const TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.w500),
    textAlign: TextAlign.center),
    ),
    );
    },
    separatorBuilder: (BuildContext context, int index) {
    return const Divider();
    },
    ),
    ),
    ],
    ),
    ),
    ))));
  }
}
