import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:rodabem_app/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RODABEM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CustomSplash(
        imagePath: 'assets/images/RodaBemApp.PNG',
        backGroundColor: Color.fromARGB(255, 35, 140, 165),
        home: LoginPage(),
        animationEffect: 'zoom-in',
        logoSize: 1200,
        duration: 2500,
        type: CustomSplashType.StaticDuration,
      ),
    );
  }
}
