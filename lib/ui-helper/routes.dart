import 'package:flutter/material.dart';
import 'package:test_pro/pages/Register/sign_in.dart';
import 'package:test_pro/pages/Register/register_page_3.dart';

import '../pages/Register/register_page_1.dart';
import '../pages/profile/user_profile.dart';



final Map<String, WidgetBuilder> routes = {

  FirstRegisterPage.routeName: (context) => FirstRegisterPage(),
    SecondRegisterPage.routeName: (context) => SecondRegisterPage(),
    ThirdRegisterPage.routeName: (context) => ThirdRegisterPage(),
    UserProfile.routeName: (context) => UserProfile(),


};
