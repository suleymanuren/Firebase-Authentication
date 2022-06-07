import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_pro/pages/Register/register_page_1.dart';
import 'package:test_pro/pages/service/auth_service.dart';
import 'package:test_pro/ui-helper/responsive.dart';

import '../profile/user_profile.dart';

class SecondRegisterPage extends StatefulWidget {
  const SecondRegisterPage({Key? key}) : super(key: key);
  static String routeName = '/SecondRegisterPage';

  @override
  State<SecondRegisterPage> createState() => _SecondRegisterPageState();
}

class _SecondRegisterPageState extends State<SecondRegisterPage> {
  bool _isObscure1 = true;
  bool _isObscure2 = true;
 final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.grey),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(color: Colors.grey)))),
                      onPressed: () => Navigator.pushNamed(context, FirstRegisterPage.routeName)),
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
                              MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(color: Colors.grey)))),
                      onPressed: () => null),
                )
              ]),
              SizedBox(height: SizeConfig.screenHeight * .1),
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
                          "Password",
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
                height: SizeConfig.screenHeight * 0.015,
              ),
InkWell(onTap: () => null,
  child:   Text("Forgot Password?"  ,style: TextStyle(
  
      decoration: TextDecoration.underline,
  color: Colors.grey
    ),),
),
              SizedBox(
                height: SizeConfig.screenHeight * 0.25,
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
                          .signIn(
                              _emailController.text, _passwordController.text)
                          .then((value) {
                        return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserProfile()));
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
