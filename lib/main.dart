//import 'package:exercicedemo/pages/mypage.dart';
import 'package:exercicedemo/pages/drawer_user_controller.dart';
import 'package:flutter/material.dart';
//import 'package:exercicedemo/pages/login.dart';

void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 return new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue, 
      dividerColor: Colors.blue[900]),
    home:new DrawerUserController(),
  );
}
}