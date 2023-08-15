import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FocusNode fieldOne=FocusNode();
  FocusNode fieldTwo=FocusNode();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;    // Gives the width
    return Stack(
      children: [
        const login_background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Expanded(flex:3,child: Container()),
              Expanded(
                flex: 2,
                child: SizedBox(
                      height: 200,
                      width: width,
                      child:Padding(
                        padding:  const EdgeInsets.only(left: 20,right: 20),
                        child: Column(
                          children: [
                            user(),
                            Container(height: 30,),
                            pass(),
                          ],
                        ),
                      ) ,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
  user(){
    return TextField(
      showCursor: false,
      focusNode: fieldOne,
      textInputAction: TextInputAction.next,
      onTapOutside: (context) =>fieldOne.unfocus(),
      onSubmitted: (value) =>FocusScope.of(context).requestFocus(fieldTwo),
      style: const TextStyle(
        color: Colors.white70,
        fontSize: 18,
        fontWeight: FontWeight.w500
      ),
      decoration:InputDecoration(
          label: const Icon(Icons.account_circle_outlined,color: Colors.white70,),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          filled:true,fillColor:Colors.grey.withOpacity(0.3),
          hintText:"Username",hintStyle: const TextStyle(color: Colors.white30)
      ),
    ).animate()
        .fadeIn(duration: const Duration(milliseconds: 500))
        .shimmer(duration: const Duration(seconds: 1));
  }
  pass(){
    return TextField(
      showCursor: false,
      focusNode: fieldTwo,
      textInputAction: TextInputAction.done,
      onTapOutside: (context) =>fieldTwo.unfocus(),
      onSubmitted: (value) =>fieldTwo.unfocus(),
      style: const TextStyle(
          color: Colors.white70,
          fontSize: 18,
          fontWeight: FontWeight.w500
      ),
      decoration: InputDecoration(
        label: const Icon(Icons.key,color: Colors.white70,),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        filled:true,fillColor:Colors.grey.withOpacity(0.3),
        hintText: 'Password',hintStyle: const TextStyle(color: Colors.white30),
      ),
    ).animate()
        .fadeIn(delay:const Duration(milliseconds: 1000),duration: const Duration(milliseconds: 500))
        .shimmer(duration: const Duration(seconds: 2));

  }

}

