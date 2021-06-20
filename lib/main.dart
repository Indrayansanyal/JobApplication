/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}*/

import 'package:flutter/material.dart';
import 'package:job_application_project/Btechpage.dart';
import 'package:job_application_project/HomeApp.dart';
import 'package:job_application_project/InfoPage.dart';
import 'package:job_application_project/Loginsec.dart';
//import 'package:my_demo/last.dart';
//import 'package:my_demo/stream/btech.dart';
//import 'package:my_demo/animations/loginsec.dart';
//import 'animations/homesec.dart';
import 'homesec.dart';
//import 'package:my_demo/splash.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 debugShowCheckedModeBanner: false,
 title: 'JobLife',
 theme: ThemeData(
 primarySwatch: Colors.cyan,
 ),
 //home: HomePage(),
 //home: LoginScreen(),
 //home: BtechPage(),
 //home: InfoPage()
 home:HomeApp(),
 );
 }
}
