import 'package:flutter/material.dart';

class outfits extends StatefulWidget {
  const outfits({super.key});

  @override
  State<outfits> createState() => _outfitsState();
}

class _outfitsState extends State<outfits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Text('Outfits Page', style: TextStyle(color: Colors.blueGrey,fontSize: 35, fontWeight: FontWeight.bold))),

    );
  }
}
