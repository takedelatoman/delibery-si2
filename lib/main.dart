import 'package:flutter/material.dart';
import 'package:flutter_deliberysi2/src/login/login_page.dart';
import 'package:flutter_deliberysi2/src/register/register_page.dart';
import 'package:flutter_deliberysi2/src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delibery App flutter',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login' ,

      routes: {
        'login' : (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
      },
      theme: ThemeData(
        //fontFamily: 'NimbusSans',
        primaryColor: MyColors.primaryColor
      ),
    );

  }
}
