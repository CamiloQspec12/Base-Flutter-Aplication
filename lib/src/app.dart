import 'package:flutter/material.dart';
//Stateless widget
//import 'pages/home_page.dart';
//StateFull widget
import 'pages/contador_page.dart';

class MyApp extends StatelessWidget {
  //@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContadorPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
