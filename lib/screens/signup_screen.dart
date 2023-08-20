import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";
import "../widgets/login_background.dart";
import "login.dart";

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  FocusNode nameNode=FocusNode();
  FocusNode usernameNode=FocusNode();
  FocusNode mobileNode=FocusNode();
  FocusNode passwordNode=FocusNode();
  FocusNode signupNode=FocusNode();
  @override
  Widget build(BuildContext context) {
    double width= MediaQuery.of(context).size.width; //Gives the width
    return  Stack(
      children: [
        const login_background(),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body:Column(
                children: [
                  usericon(),
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      width: width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  name(), consizedbox(),
                                  username(), consizedbox(),
                                  mobile(), consizedbox(),
                                  password(), consizedbox(),
                                  signupButton()
                                ],
                              ),
                            ),
                            haveAccount(),
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
  consizedbox(){
    return const SizedBox(
      height: 20,
    );
  }
  usericon(){
    double height= MediaQuery.of(context).size.height; //Gives the height
    return SizedBox(
        height:height*0.3,
        child: Align(
            alignment: Alignment.center,
            child: Image(image: const AssetImage("assets/icons/adduser.png"),
              color:Colors.grey.withOpacity(0.5),
              width: 100,
            height: 100,)
        )
    );
  }
  name(){
    return Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        constraints: const BoxConstraints(
            maxHeight: 60
        ),
        child: TextField(
          showCursor: false,
          focusNode: nameNode,
          textInputAction: TextInputAction.next,
          onTapOutside: (context) =>nameNode.unfocus(),
          onSubmitted: (value) =>FocusScope.of(context).requestFocus(usernameNode),
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
              labelText: "  First name",labelStyle:const TextStyle(fontSize:18,color: Colors.white70) ,
              prefixIcon: const Icon(Icons.abc,color: Colors.white70,),
              filled:true,fillColor:Colors.grey.withOpacity(0.3),
              hintText:"Devedndra",hintStyle: TextStyle(color: Colors.white30.withOpacity(0.1))
          ),
        ).animate()
            .fadeIn(duration: const Duration(milliseconds: 200))
            .shimmer(duration: const Duration(seconds: 1)),
      ),
    );
  }
  username(){
    return Container(
      constraints: const BoxConstraints(
          maxHeight: 60
      ),
      child: TextField(
        showCursor: false,
        focusNode: usernameNode,
        textInputAction: TextInputAction.next,
        onTapOutside: (context) =>usernameNode.unfocus(),
        onSubmitted: (value) =>FocusScope.of(context).requestFocus(mobileNode),
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
            labelText: "  Username",labelStyle:const TextStyle(fontSize:18,color: Colors.white70) ,
            prefixIcon:const Icon(Icons.account_circle_outlined,color: Colors.white70,),
            filled:true,fillColor:Colors.grey.withOpacity(0.3),
            hintText:"devward0",hintStyle: TextStyle(color: Colors.white30.withOpacity(0.1))
        ),
      ).animate()
          .fadeIn(delay:const Duration(milliseconds: 500),duration: const Duration(milliseconds: 500))
          .shimmer(duration: const Duration(seconds: 1)),
    );
  }
  mobile(){
    return Container(
      constraints: const BoxConstraints(
          maxHeight: 60
      ),
      child: TextField(
        keyboardType: TextInputType.phone,
        showCursor: false,
        focusNode: mobileNode,
        textInputAction: TextInputAction.next,
        onTapOutside: (context) =>mobileNode.unfocus(),
        onSubmitted: (value) =>FocusScope.of(context).requestFocus(passwordNode),
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
            labelText: "  Mobile No.",labelStyle:const TextStyle(fontSize:18,color: Colors.white70) ,
            prefixIcon:const Icon(Icons.call,color: Colors.white70,),
            filled:true,fillColor:Colors.grey.withOpacity(0.3),
            hintText:"7898820922",hintStyle: TextStyle(color: Colors.white30.withOpacity(0.1))
        ),
      ).animate()
          .fadeIn(delay:const Duration(milliseconds: 1000),duration: const Duration(milliseconds: 800))
          .shimmer(duration: const Duration(seconds: 1)),
    );
  }
  password(){
    return Container(
      constraints: const BoxConstraints(
          maxHeight: 60
      ),
      child: TextField(
        showCursor: false,
        focusNode: passwordNode,
        textInputAction: TextInputAction.done,
        onTapOutside: (context) =>passwordNode.unfocus(),
        onSubmitted: (value) =>FocusScope.of(context).requestFocus(passwordNode),
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
            labelText: "  Password",labelStyle:const TextStyle(fontSize:18,color: Colors.white70) ,
            prefixIcon:const Icon(Icons.key,color: Colors.white70,),
            filled:true,fillColor:Colors.grey.withOpacity(0.3),
            hintText:"* * * * * * *",hintStyle: TextStyle(color: Colors.white30.withOpacity(0.1))
        ),
      ).animate()
          .fadeIn(delay:const Duration(milliseconds: 1500),duration: const Duration(milliseconds: 1200))
          .shimmer(duration: const Duration(seconds: 1)),
    );
  }
  signupButton(){
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
            focusNode: signupNode,
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
            child:const  Text("SIGN UP",
              style: TextStyle(
                fontSize: 18,
                fontWeight:FontWeight.w400,
                color: Colors.white,
              ),
            )
        ),
      ).animate()
          .fadeIn(delay:const Duration(milliseconds: 2000),duration: const Duration(milliseconds: 500)),
    );
  }
  haveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have Account ?",style: TextStyle(color: Colors.grey)),
        InkWell(
            overlayColor: const MaterialStatePropertyAll(Colors.cyan),
            onTap: (){Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Login()));},
            child: const Text('Log In', style: TextStyle(color: Colors.blueGrey))
        ),
      ],
    );
  }
}
