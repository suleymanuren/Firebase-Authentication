import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);
static String routeName = '/UserProfile';
  @override
  State<UserProfile> createState() => _UserProfileState();

}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Giriş Başarılı")),
    );
  }
}