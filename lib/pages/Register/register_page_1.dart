import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_pro/pages/Register/sign_in.dart';
import 'package:test_pro/pages/Register/register_page_3.dart';
import 'package:test_pro/pages/service/auth_service.dart';
import 'package:test_pro/ui-helper/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirstRegisterPage extends StatefulWidget {
  const FirstRegisterPage({Key? key}) : super(key: key);
  static String routeName = '/FirstRegisterPage';

  @override
  State<FirstRegisterPage> createState() => _FirstRegisterPageState();
}

class _FirstRegisterPageState extends State<FirstRegisterPage> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repasswordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Text('AppBar'),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }), // appbar leading icon.
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  color: Colors.grey,
                  width: SizeConfig.screenHeight * .2,
                  height: SizeConfig.screenWidth * 0.11,
                  child: ElevatedButton(
                      child: Text("Sign Up         ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14)),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(color: Colors.grey)))),
                      onPressed: () => null),
                ),
                Container(
                  color: Colors.grey,
                  width: SizeConfig.screenHeight * .2,
                  height: SizeConfig.screenWidth * 0.11,
                  child: ElevatedButton(
                      child: Text("Sign In         ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 14)),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.grey),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(color: Colors.grey)))),
                      onPressed: () => Navigator.pushNamed(
                          context, SecondRegisterPage.routeName)),
                )
              ]),
              SizedBox(height: SizeConfig.screenHeight * .05),
              Container(
                width: SizeConfig.screenHeight * 0.45,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Email",
                        )),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.01,
                    ),
                    Container(
                      width: SizeConfig.screenHeight * 0.5,
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            fillColor: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.035,
              ),
              Container(
                width: SizeConfig.screenHeight * 0.45,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Create Password",
                        )),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.01,
                    ),
                    Container(
                      width: SizeConfig.screenHeight * 0.5,
                      child: TextField(
                        controller: _passwordController,
                        obscureText: _isObscure1,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure1
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure1 = !_isObscure1;
                                  });
                                }),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            fillColor: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.035,
              ),
              Container(
                width: SizeConfig.screenHeight * 0.45,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Re-Write Password",
                        )),
                    SizedBox(
                      height: SizeConfig.screenHeight * 0.01,
                    ),
                    Container(
                      width: SizeConfig.screenHeight * 0.5,
                      child: TextField(
                        controller: _repasswordController,
                        obscureText: _isObscure2,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure2
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure2 = !_isObscure2;
                                  });
                                }),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            fillColor: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              Container(
                width: SizeConfig.screenHeight * 0.30,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Center(
                    child: Text.rich(TextSpan(
                        text: 'By continuing, you agree to our ',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: <TextSpan>[
                      TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // code to open / launch terms of service link here
                            }),
                      TextSpan(
                          text: ' and ',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // code to open / launch privacy policy link here
                                  })
                          ])
                    ]))),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * .02,
              ),
              Container(
                width: SizeConfig.screenHeight * 0.43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade500.withOpacity(0.6),
                ),
                child: TextButton(
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      _authService
                          .createPerson(
                              _emailController.text.trim(),
                              _passwordController.text.trim(),
                              )
                          .then((value) {
                        return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondRegisterPage()));
                      });
                      print('Pressed');
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
