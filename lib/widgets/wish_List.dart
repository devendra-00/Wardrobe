import 'package:flutter/material.dart';

class wish extends StatefulWidget {
  const wish({super.key});

  @override
  State<wish> createState() => _wishState();
}

class _wishState extends State<wish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(child: Text('Wishlist Page', style: TextStyle(color: Colors.blueGrey,fontSize: 35, fontWeight: FontWeight.bold))),

    );
  }
}
