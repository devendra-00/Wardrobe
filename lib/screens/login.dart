import 'package:flutter/material.dart';
import 'package:myapp/screens/signup_screen.dart';
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
  FocusNode loginBtn=FocusNode();
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width; //Gives the width
    return Stack(
      children: [
        const login_background(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children:[Align(alignment: Alignment.bottomCenter,child:noAccount()),
              Column(
              children: [
                usericon(),
                Expanded(
                  child: SizedBox(
                        height: 200,
                        width: width,
                        child:Padding(
                          padding:  const EdgeInsets.only(left: 20,right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              username(),
                              forgotUsername(),
                              pass(),
                              forgotPass(),
                              loginButton(),
                            ],
                          ),
                        ) ,
                  ),
                ),
              ],
            ),
          ]
          ),
        )
      ],
    );
  }

  usericon(){
    double height= MediaQuery.of(context).size.height; //Gives the height
    return SizedBox(
        height:height*0.3,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Icon(Icons.account_circle,
            shadows: const [Shadow(color: Colors.black,blurRadius: 400)],
            size: 150,
            color:Colors.grey.withOpacity(0.6),)
        )
    );
  }
  username(){
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 60
      ),
      child: TextField(
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
            focusedBorder:const OutlineInputBorder(                      //Focused Border
              borderSide: BorderSide(color: Colors.white30,width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            border: const OutlineInputBorder(                           //Unfocused Border
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            labelText: "Username",labelStyle:const TextStyle(fontSize:18,color: Colors.white70) ,
            prefixIcon: const Icon(Icons.account_circle_outlined,color: Colors.white70,),
            filled:true,fillColor:Colors.grey.withOpacity(0.3),
            hintText:"devward0",hintStyle: TextStyle(color: Colors.white30.withOpacity(0.1))
        ),
      ).animate()
          .fadeIn(duration: const Duration(milliseconds: 500))
          .shimmer(duration: const Duration(seconds: 1)),
    );
  }
  forgotUsername(){
      return SizedBox(
        height: 30,
        child: Align(
          alignment: Alignment.topRight,
          child: const Text("forgot username ?",
            style: TextStyle(
                shadows:[Shadow(color: Colors.black,blurRadius: 20)],
                color:Colors.blueGrey,
                fontSize:15),
            ).animate()
                .fadeIn(duration: const Duration(milliseconds: 500)),
        )
      );
  }
  pass(){
    return Container(
      constraints:const  BoxConstraints(
        maxHeight: 60
      ),
      child: TextField(
        showCursor: false,
        focusNode: fieldTwo,
        textInputAction: TextInputAction.done,
        onTapOutside: (context) =>fieldTwo.unfocus(),
        onSubmitted: (value) =>FocusScope.of(context).requestFocus(loginBtn),
        style: const TextStyle(
            color: Colors.white70,
            fontSize: 18,
            fontWeight: FontWeight.w500
        ),
        decoration: InputDecoration(
          focusedBorder:const OutlineInputBorder(                      //Focused Border
            borderSide: BorderSide(color: Colors.white30,width: 1.5),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),      //Unfocused Border
          ),
          prefixIcon: const Icon(Icons.key,color: Colors.white70,),
          labelText: "Password",labelStyle:const TextStyle(fontSize:18,color: Colors.white70),
          filled:true,fillColor:Colors.grey.withOpacity(0.3),
          hintText: '* * * * * *',hintStyle:  TextStyle(color: Colors.white30.withOpacity(0.3)),
        ),
      ).animate()
          .fadeIn(delay:const Duration(milliseconds: 500),duration: const Duration(milliseconds: 500))
          .shimmer(duration: const Duration(seconds: 2)),
    );
  }
  forgotPass(){
    return SizedBox(
        height: 30,
        child: Align(
          alignment: Alignment.topRight,
          child: const Text("forgot password ?",
            style: TextStyle(
                shadows: [Shadow(color: Colors.black,blurRadius: 20)],
                color:Colors.blueGrey,
                fontSize:15),
          ).animate()
              .fadeIn(delay:const Duration(milliseconds: 500  ),duration: const Duration(milliseconds: 500)),
        )
    );
  }
  loginButton(){
    double width= MediaQuery.of(context).size.width; //Gives the width
    //double height= MediaQuery.of(context).size.height; //Gives the width
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
          constraints: BoxConstraints(
            minWidth: width,
              minHeight:60

          ),
          child: ElevatedButton(
            focusNode: loginBtn,
              onPressed: (){},
              style: ButtonStyle(
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.grey)
                      )
                  ),
                backgroundColor: const MaterialStatePropertyAll<Color>(Colors.blueGrey),
              ),
              child:const  Text("LOGIN",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.w400,
                  color: Colors.white,
                ),
              )
          ),
      ).animate()
          .fadeIn(delay:const Duration(milliseconds: 1000),duration: const Duration(milliseconds: 500)),
    );
  }
  noAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an Account ?",style: TextStyle(color: Colors.grey)),
          InkWell(
            overlayColor: MaterialStatePropertyAll(Colors.cyan),
              onTap:(){print(Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Signup())));},
              child: Text('Create Account', style: TextStyle(color: Colors.blueGrey))
          ),
        ],
      );
  }


}

