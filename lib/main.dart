import 'package:flutter/material.dart';
import 'package:myapp/screens/forgotPass_Verify/forgotpass.dart';
import 'package:myapp/screens/forgotPass_Verify/otpVerify.dart';
import 'package:myapp/screens/landing_page.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/screens/splash_screeen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const landingpage(),
    );
  }
}
