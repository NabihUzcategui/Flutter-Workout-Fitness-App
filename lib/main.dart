import 'package:flutter/material.dart';

import 'view/login/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: "Quicksand",
        ),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const OnBoardingView());
  }
}
