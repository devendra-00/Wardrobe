import 'package:flutter/material.dart';
import 'package:myapp/screens/forgotPass_Verify/forgotpass.dart';
import 'package:myapp/screens/signup_screen.dart';
import 'package:myapp/widgets/login_sign_backround.dart';
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
        login_sign_background(),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body:Stack(
            children: [
              Align(alignment: Alignment.bottomCenter,child:noAccount() ,),
              Stack(
              children:[
                Center(
                child: Container(
                  height: 320,
                  width: width-40,
                  child: Text("LOGIN !!",
                    style: TextStyle(color:Colors.white70,fontStyle: FontStyle.italic,fontSize: 35,fontWeight: FontWeight.w700),),
                ),
                ),
                Center(
                child: Container(
                  height: 230,
                  width: width-40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [username(),SizedBox(height: 20,), pass(),],),
                      forgotPass(),
                      loginButton()
                    ],
                  ),
                ),
                ),
              ]
              ),
            ]
          ),
        ),
      ]
    );
  }
  signupButton(){
    double height=MediaQuery.of(context).size.height;
    return Row(
      children: [
        Text("Don't have Account ?",style:TextStyle(fontSize: 12)),
        Text("Sign Up")
      ],
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
            filled:true,fillColor:Colors.black.withOpacity(0.3),
            hintText:"devward0",hintStyle: TextStyle(color: Colors.white30.withOpacity(0.1))
        ),
      ).animate()
          .shimmer(duration: const Duration(seconds: 1)),
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
          filled:true,fillColor:Colors.black.withOpacity(0.3),
          hintText: '* * * * * *',hintStyle:  TextStyle(color: Colors.white30.withOpacity(0.3)),
        ),
      ).animate()
          .shimmer(duration: const Duration(seconds: 1)),
    );
  }
  forgotPass(){
    return InkWell(
      splashColor: Colors.transparent,
      onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => const ForgotPass())),
      child: SizedBox(
          height: 30,
          child: Align(
            alignment: Alignment.topRight,
            child: const Text("forgot password/username ?",
              style: TextStyle(
                  shadows: [Shadow(color: Colors.black,blurRadius: 5)],
                  color:Color(0xff8BCBC4),
                  fontSize:15),
            ).animate()
                .fadeIn(delay:const Duration(milliseconds: 500  ),duration: const Duration(milliseconds: 500)),
          )
      ),
    );
  }
  loginButton(){
    double width= MediaQuery.of(context).size.width; //Gives the width
    //double height= MediaQuery.of(context).size.height; //Gives the width
    return Container(
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
              backgroundColor: const MaterialStatePropertyAll<Color>(Color(0xff38978E)),
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
        .fadeIn(delay:const Duration(milliseconds: 1000),duration: const Duration(milliseconds: 500));
  }
  noAccount(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't have an Account ?",style: TextStyle(color: Colors.grey)),
            InkWell(
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
                onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context) => const Signup()));},
                child: const Text('Create Account', style: TextStyle(color: Color(0xff38978E)))
            ),
          ],
        ),
    );
  }
}
