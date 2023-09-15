import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:
      Center(child: Text('Home Page', style: TextStyle(color: Colors.blueGrey,fontSize: 35, fontWeight: FontWeight.bold))),
    );
  }
}
