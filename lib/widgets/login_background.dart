import 'package:flutter/material.dart';

class login_background extends StatelessWidget {
  const login_background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds){
        return const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [Colors.black,Colors.black12]
        ).createShader(bounds);
      },blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image:AssetImage("assets/images/ward.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
            )
        ),
      ),
    );
  }
}