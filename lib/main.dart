import 'package:flutter/material.dart';
import 'package:flutter2_learn/Screens/Welcome/WelcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo Admin Panel',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blue,
            ).copyWith(
              secondary: Colors.red.shade400,
            ),
            scaffoldBackgroundColor: Colors.grey.shade100),
        home: WelcomeScreen());
  }
}
