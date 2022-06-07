import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_pro/ui-helper/responsive.dart';

class ThirdRegisterPage extends StatefulWidget {
  const ThirdRegisterPage({Key? key}) : super(key: key);

  @override
  State<ThirdRegisterPage> createState() => _ThirdRegisterPageState();
    static String routeName = '/ThirdRegisterPage';

}

class _ThirdRegisterPageState extends State<ThirdRegisterPage> {
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
   body: Container(child: Column(mainAxisAlignment: MainAxisAlignment.center,
     children: [
              SizedBox(height: SizeConfig.screenHeight*.3,),

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Align(alignment: Alignment.topLeft,child: Text("Your Name?",style: TextStyle(fontSize: 35),),),
       ),
       SizedBox(height:SizeConfig.screenHeight*.06),
       Padding(
         padding: const EdgeInsets.only(right: 50.0),
         child: Container(
           width: SizeConfig.screenWidth*.8,
           child: TextField(
  decoration: InputDecoration(
      border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
      ),
      filled: true,
      hintStyle: TextStyle(color: Colors.grey),
      hintText: "Your Name",
      fillColor: Colors.white70),
),
         ),
       ),
       SizedBox(height: SizeConfig.screenHeight*.25,),
                     Container(
                width: SizeConfig.screenHeight * 0.43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff010195).withOpacity(0.85),
                ),
                child: TextButton(
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, ThirdRegisterPage.routeName);
                      print('Pressed');
                    }),
              )
     ],
   )), );
  }
}