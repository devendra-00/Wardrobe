import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dart:async';

import 'package:myapp/screens/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState(){super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Login()
            )
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(child: part1()),
          Expanded(child: part2()),
          Expanded(child: part3())
        ],
      ),
    );
  }

  //Part-1 of the Splash Screen(Upper Part)
  part1(){
    return Row(
      children: [
        Expanded(child: Container(
            margin: const EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 5),
            child: const Image(image: AssetImage("assets/images/splash1.jpg"),fit: BoxFit.fill,)
        ).animate()
            .slideY(duration: const Duration(seconds: 2),begin: 5)
            .fadeOut(delay:const Duration(seconds: 4),duration: const Duration(seconds: 1))
        ),
        Expanded(child: Container(
            margin: const EdgeInsets.only(top: 10,bottom: 10,left: 5,right: 10),
            child: const Image(image: AssetImage("assets/images/splash4.jpg"),fit: BoxFit.fill,)
        ).animate()
            .slideX(duration: const Duration(seconds: 2),begin: 5)
            .fadeOut(delay:const Duration(seconds: 4),duration: const Duration(seconds: 1))
        ),
      ],
    );
  }

  //Part-2 of the Splash Screen(Middle Part)
  part2(){
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
        image:AssetImage("assets/images/splash5.jpg"),
          )
        ),
        child: const Padding(padding: EdgeInsets.all(50),
        child: Image(image: AssetImage("assets/images/splash6.jpeg"),),
        ).animate()
        .fadeIn(delay:const Duration(seconds: 2),duration: const Duration(seconds: 2))
        .shimmer(duration: const Duration(seconds: 1)).fadeOut(delay:const Duration(seconds: 4),duration: const Duration(seconds: 1))


    ).animate()
        .fadeIn(duration: const Duration(seconds: 2))
        .fadeOut(delay:const Duration(seconds: 4),duration: const Duration(seconds: 1)
    );
  }

  //Part-3 of the Splash Screen(Lower Part)
  part3(){
    return Row(
      children: [
        Expanded(child: Container(
          margin: const EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 5),
            child: const Image(image: AssetImage("assets/images/splash3.jpg"),fit: BoxFit.fill,)
        ).animate()
            .slideX(duration: const Duration(seconds: 2),begin: -5)
            .fadeOut(delay:const Duration(seconds: 4),duration: const Duration(seconds: 1))
        ),
        Expanded(child: Container(
          margin: const EdgeInsets.only(top: 10,bottom: 10,left: 5,right: 10),
            child: const Image(image: AssetImage("assets/images/splash2.jpg"),fit: BoxFit.fill,)
        ).animate()
            .slideY(duration: const Duration(seconds: 2),begin: -5)
            .fadeOut(delay:const Duration(seconds: 4),duration:const Duration(seconds: 1))
        ),
      ],
    );
  }
}
