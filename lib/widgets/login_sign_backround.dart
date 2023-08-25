import 'package:flutter/material.dart';

class login_sign_background extends StatelessWidget {
  const login_sign_background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds){
        return  LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [Colors.black,Colors.black12.withOpacity(0.1)]
        ).createShader(bounds);
      },blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image:const AssetImage("assets/images/fpbackground-2.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.brown.withOpacity(0.5), BlendMode.softLight)
            )
        ),
      ),
    );
  }
}