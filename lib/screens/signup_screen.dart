import "package:flutter/material.dart";
import "package:flutter_animate/flutter_animate.dart";
import "../widgets/login_sign_backround.dart";
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
    return Stack(
        children: [
          login_sign_background(),
          Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body:Stack(
                children: [
                  Align(alignment: Alignment.bottomCenter,child:haveAccount() ,),
                  Stack(
                      children:[
                        Center(
                          child: Container(
                            height: 320,
                            width: width-40,
                            child: Text("SIGN UP !!",
                              style: TextStyle(color:Colors.white70,fontStyle: FontStyle.italic,fontSize: 35,fontWeight: FontWeight.w700),),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 230,
                            width: width-40,
                            child: Column(

                              children: [
                                Container(height: 160,
                                  child: Scrollbar(
                                    thumbVisibility: true,
                                    thickness: 10,
                                    radius: Radius.circular(20),
                                    scrollbarOrientation: ScrollbarOrientation.right,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(children: [name(),SizedBox(height: 20,),
                                        username(),SizedBox(height: 20,),
                                        mobile(),SizedBox(height: 20,),
                                        password(),SizedBox(height: 20,),
                                      ],),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                signupButton()
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
              filled:true,fillColor:Colors.black.withOpacity(0.3),
              hintText:"Devedndra",hintStyle: TextStyle(color: Colors.white30.withOpacity(0.1))
          ),
        ).animate()
            .fadeIn(duration: const Duration(milliseconds: 300))
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
            filled:true,fillColor:Colors.black.withOpacity(0.3),
            hintText:"devward0",hintStyle: TextStyle(color: Colors.white30.withOpacity(0.1))
        ),
      ).animate()
          .fadeIn(delay:const Duration(milliseconds: 300),duration: const Duration(milliseconds: 300))
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
            filled:true,fillColor:Colors.black.withOpacity(0.3),
            hintText:"7898820922",hintStyle: TextStyle(color: Colors.white30.withOpacity(0.1))
        ),
      ).animate()
          .fadeIn(delay:const Duration(milliseconds: 500),duration: const Duration(milliseconds: 300))
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
            filled:true,fillColor:Colors.black.withOpacity(0.3),
            hintText:"* * * * * * *",hintStyle: TextStyle(color: Colors.white30.withOpacity(0.1))
        ),
      ).animate()
          .fadeIn(delay:const Duration(milliseconds: 700),duration: const Duration(milliseconds: 300))
          .shimmer(duration: const Duration(seconds: 1)),
    );
  }
  signupButton(){
    double width= MediaQuery.of(context).size.width; //Gives the width
    //double height= MediaQuery.of(context).size.height; //Gives the width
    return Container(
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
            backgroundColor: const MaterialStatePropertyAll<Color>(Color(0xff38978E)),
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
        .fadeIn(delay:const Duration(milliseconds: 900),duration: const Duration(milliseconds: 300));
  }
  haveAccount(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Already have Account ?",style: TextStyle(color: Colors.grey)),
          InkWell(
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              onTap: (){Navigator.pop(context,MaterialPageRoute(builder: (context) => const Signup()));},
              child: const Text('Log In', style: TextStyle(color: Color(0xff38978E)))
          ),
        ],
      ),
    );
  }
}
