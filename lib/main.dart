// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iwd23/screens/auth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      //home: PostPage(),
      title: 'Flutter App',
      home: AuthScreen(),
    );
  }
}
