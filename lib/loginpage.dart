import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'checkout/controller/app_language.dart';
import 'myAccount.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  var myemail1, mypassword1;

  signIn() async {
    var formdata = _key?.currentState;
    if (formdata!.validate()) {
      formdata.save();
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: myemail1, password: mypassword1);
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool("isLogin", true);
        prefs.setString("userEmail", "${credential.user?.email}");
        prefs.setString("userId", "${credential.user?.uid}");
        return credential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          AwesomeDialog(
              context: context,
              title: " Error",
              body: const Text("No user found for that email."))
              .show();
        } else if (e.code == 'wrong-password') {
          AwesomeDialog(
              context: context,
              title: " Error",
              body: const Text("Wrong password provided for that user."))
              .show();
        }
      }
    } else {
      print('Not Valid');
    }
  }

  var yourname, phone, myemail, mypassword;

  signUp() async {
    var formdata = _key1?.currentState;
    if (formdata!.validate()) {
      formdata.save();
      try {
        UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: myemail,
          password: mypassword,
        );
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool("isLogin", true);
        prefs.setString("userEmail", "${userCredential.user?.email}");
        prefs.setString("userId", "${userCredential.user?.uid}");

        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          AwesomeDialog(
              context: context,
              title: " Error",
              body: const Text("Password is to weak."))
              .show();
        } else if (e.code == 'email-already-in-use') {
          AwesomeDialog(
              context: context,
              title: " Error",
              body:
              const Text("The account already exists for that email."))
              .show();
        }
      } catch (e) {
        print(e);
      }
    } else {
      print('Not Valid');
    }
  }

  GlobalKey<FormState>? _key;
  GlobalKey<FormState>? _key1;
  TextEditingController? _controller;
  TextEditingController? _controller1;
  TextEditingController? _controller2;
  TextEditingController? _controller3;
  TextEditingController? _controller4;
  TextEditingController? _controller5;

  @override
  void initState() {
    _key = GlobalKey();
    _key1 = GlobalKey();
    _controller = TextEditingController();
    _controller?.addListener(() => print(_controller?.text));
    _controller1 = TextEditingController();
    _controller1?.addListener(() => print(_controller1?.text));
    _controller2 = TextEditingController();
    _controller2?.addListener(() => print(_controller2?.text));
    _controller3 = TextEditingController();
    _controller3?.addListener(() => print(_controller3?.text));
    _controller4 = TextEditingController();
    _controller4?.addListener(() => print(_controller4?.text));
    _controller5 = TextEditingController();
    _controller5?.addListener(() => print(_controller5?.text));
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  bool isHiddenPassword = true;
  void password() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  bool isHiddenPassword1 = true;
  void password1() {
    setState(() {
      isHiddenPassword1 = !isHiddenPassword1;
    });
  }

  String? _password;
  double _strength = 0;

  RegExp numReg = RegExp(r".*[0-9].*");
  RegExp letterReg = RegExp(r".*[A-Za-z].*");

  String? _displayText = 'Please enter you password';

  void _checkPassword(String value) {
    _password = value.trim();

    if (_password!.isEmpty) {
      setState(() {
        _strength = 0;
        _displayText = 'Please enter you password';
      });
    } else if (_password!.length < 5) {
      setState(() {
        _strength = 1 / 4;
        _displayText = 'Your password is too short';
      });
    } else if (_password!.length < 7) {
      setState(() {
        _strength = 2 / 4;
        _displayText = 'Your password is acceptable but not strong';
      });
    } else {
      if (!letterReg.hasMatch(_password!) || !numReg.hasMatch(_password!)) {
        setState(() {
          // Password length >= 8
          // But doesn't contain both letter and digit characters
          _strength = 3 / 4;
          _displayText = 'Your password is strong';
        });
      } else {
        // Password length >= 8
        // Password contains both letter and digit characters
        setState(() {
          _strength = 1;
          _displayText = 'Your password is great';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppLanguage>(
        init: AppLanguage(),
        builder: ((controller) => DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              title: TabBar(
                tabs: [
                  Tab(
                      child: Text(
                        "LOG IN".tr,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      )),
                  Tab(
                      child: Text(
                        "SIGN UP".tr,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Form(
                        key: _key,
                        child: Column(
                          children: [
                            const CircleAvatar(
                                radius: 50,
                                backgroundImage: AssetImage(
                                  "image/logo.jpg",
                                )),
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              controller: _controller,
                              onSaved: (val) {
                                myemail1 = val;
                              },
                              validator: (value) => value!.isEmpty
                                  ? 'The email filed is required'.tr
                                  : null,
                              decoration:  InputDecoration(
                                counterText: '20/30'.tr,
                                prefixIcon: Icon(Icons.email),
                                hintText: 'Email'.tr,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              maxLength: 30,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: _controller1,
                              onSaved: (val) {
                                mypassword1 = val;
                              },
                              onChanged: (value) => _checkPassword(value),
                              obscureText: isHiddenPassword,
                              validator: (value) => value!.isEmpty
                                  ? 'The password filed is required'.tr
                                  : null,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.vpn_key),
                                hintText: "Password".tr,
                                suffixIcon: IconButton(
                                  icon: isHiddenPassword
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility),
                                  onPressed: password,
                                ),
                                counterText: '20/30'.tr,
                              ),
                              maxLength: 30,
                            ),
                            const SizedBox(
                              height: 30,
                            ),

                            Container(
                              color: Colors.blue[900],
                              child: Center(
                                child: MaterialButton(
                                  onPressed: () async {
                                    var user = await signIn();
                                    if (user != null) {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) => MyAccount()));
                                    }
                                    if (_key!.currentState!.validate()) {
                                      String email = _controller!.value.text;
                                      String password = _controller1!.value.text;
                                      print(email);
                                      print(password);

                                    }
                                  },
                                  child: Text(
                                    'LOG IN'.tr,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextButton(
                                onPressed: () {},
                                child:  Text(
                                  'Forget Password?'.tr,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListView(children: [
                    Form(
                      key: _key1,
                      child: Column(
                        children: [
                          const CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                "image/logo.jpg",
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                              controller: _controller2,
                              onSaved: (val) {
                                yourname = val;
                              },
                              validator: (value) => value!.isEmpty
                                  ? 'The yourName filed is required'.tr
                                  : null,
                              decoration: InputDecoration(
                                hintText: "Your Name".tr,
                                prefixIcon: Icon(Icons.person),
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: _controller3,
                            onSaved: (val) {
                              phone = val;
                            },
                            validator: (value) => value!.isEmpty
                                ? 'The phone filed is required'.tr
                                : null,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              hintText: "Phone number".tr,
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: _controller4,
                            onSaved: (val) {
                              myemail = val;
                            },
                            validator: (value) => value!.isEmpty
                                ? 'The email filed is required'.tr
                                : null,
                            decoration:  InputDecoration(
                              counterText: '20/30'.tr,
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Email'.tr,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            maxLength: 30,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            controller: _controller5,
                            onSaved: (val) {
                              mypassword = val;
                            },
                            onChanged: (value) => _checkPassword(value),
                            obscureText: isHiddenPassword1,
                            validator: (value) => value!.isEmpty
                                ? 'The password filed is required'.tr
                                : null,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.vpn_key),
                              hintText: "Password".tr,
                              suffixIcon: IconButton(
                                icon: isHiddenPassword1
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility),
                                onPressed: password1,
                              ),
                              counterText: '20/30'.tr,
                            ),
                            maxLength: 30,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            _displayText!,
                            style: const TextStyle(
                              color: Colors.black26,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          // The strength indicator bar
                          SizedBox(
                            height: 10,
                            width: double.infinity,
                            child: LinearProgressIndicator(
                              value: _strength,
                              backgroundColor: Colors.grey[300],
                              color: _strength <= 1 / 4
                                  ? Colors.red
                                  : _strength == 2 / 4
                                  ? Colors.yellow
                                  : _strength == 3 / 4
                                  ? Colors.blue
                                  : Colors.green,
                              minHeight: 15,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            color: Colors.blue[900],
                            child: Center(
                                child: TextButton(
                                  onPressed: () async {
                                    UserCredential? response = await signUp();
                                    if (response != null) {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) => MyAccount()));
                                    } else {
                                      print("Sign Up Failed");
                                    }

                                    if (_key1!.currentState!.validate()) {
                                      String yourName = _controller2!.value.text;
                                      String phone = _controller3!.value.text;
                                      String email = _controller4!.value.text;
                                      String password = _controller5!.value.text;
                                      print(yourName);
                                      print(phone);
                                      print(email);
                                      print(password);
                                    }
                                  },
                                  child:  Text(
                                    "CREATE ACCOUNT".tr,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: TextButton(
                                onPressed: () {},
                                child:  Text(
                                  "Terms And Conditions?".tr,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                          Center(
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Return Policy?".tr,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        )));
  }
}
