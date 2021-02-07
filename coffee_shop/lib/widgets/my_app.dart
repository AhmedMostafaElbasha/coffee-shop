import 'package:flutter/material.dart';
import '../constants/constants.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HOMEPAGE,
      routes: routes,
    );
  }
}
