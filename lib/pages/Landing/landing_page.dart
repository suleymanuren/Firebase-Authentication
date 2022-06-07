import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_pro/ui-helper/responsive.dart';

import '../Register/register_page_1.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
                    SizedBox(height: SizeConfig.screenHeight*.05,),

          Image(
              image: NetworkImage(
                  "https://i1.wp.com/flutteragency.com/wp-content/uploads/2020/06/Flutter-Logo.png?resize=737%2C648&ssl=1"),fit: BoxFit.cover,),
          Text("The Best App",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
                    SizedBox(height: SizeConfig.screenHeight*.1,),
          FloatingActionButton.extended(
            heroTag: "btn1",
            onPressed: () {
Navigator.pushNamed(context, FirstRegisterPage.routeName);            },
            label: const Text('Continue with E-mail'),
            icon: const Icon(Icons.mail),
            backgroundColor: Colors.red,
          ),
          SizedBox(height: SizeConfig.screenHeight*.02,),
          FloatingActionButton.extended(
                        heroTag: "btn2",

            onPressed: () {
            },
            label: const Text('Continue with Google'),
            icon: const Icon(Icons.mail_lock),
            backgroundColor: Colors.red,
          ),
          SizedBox(height: SizeConfig.screenHeight*.02,),

          FloatingActionButton.extended(
                        heroTag: "btn3",

            onPressed: () {
            },
            label: const Text('Continue with Facebook'),
            icon: const Icon(Icons.facebook),
            backgroundColor: Colors.red,
          ),
          SizedBox(height: SizeConfig.screenHeight*.02,),

          FloatingActionButton.extended(
                        heroTag: "btn4",

            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text('Continue without Signup'),
            icon: const Icon(Icons.login),
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
