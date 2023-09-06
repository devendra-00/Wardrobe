import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:myapp/screens/forgotPass_Verify/otpVerify.dart';
import 'package:myapp/widgets/login_sign_backround.dart';



class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  FocusNode usernameNode=FocusNode();
  FocusNode mobileNode=FocusNode();
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    //double height=MediaQuery.of(context).size.height;
    return Stack(
        children: [
          login_sign_background(),

          Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            floatingActionButton: backButton(),
            body:Stack(
              children: [
                Center(
                  child: Container(
                    //color: Colors.red,
                    height: 230,
                    width: width-40,
                    child: Center(child: Padding(
                      padding: const EdgeInsets.only(bottom: 90),
                      child: Text("-------OR-------",style: TextStyle(color: Colors.white70),),
                    )),
                  ),
                ),
                Center(
                child: Container(
                  //color: Colors.black.withOpacity(0.3 ),
                  height: 230,
                  width: width-40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [username(),SizedBox(height: 20,), mobile(),],),
                      mobile_username(),
                      loginButton(),

                    ],
                  ),
                ),
                ),
              ]
            ),
          ),

        ]
    );
  }
  backButton(){
    double height=MediaQuery.of(context).size.height;
    return Padding(padding: EdgeInsets.only(top:height*0.075),
      child: Align(
        alignment: Alignment.topLeft,
        child: FloatingActionButton(
          backgroundColor: Colors.black.withOpacity(0.2),
          child: Icon(Icons.arrow_back_rounded,size: 20,color: Colors.white,),
          onPressed: (){Navigator.pop(context,MaterialPageRoute(builder: (context) => const ForgotPass()));},
        ),
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
        onSubmitted: (value) =>FocusScope.of(context).requestFocus(),
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
          .shimmer(duration: const Duration(seconds: 1)),
    );
  }
  mobile_username(){
    return InkWell(
      splashColor: Colors.transparent,
      onTap: (){
        FocusScope.of(context).requestFocus(mobileNode);
      },
      child: SizedBox(
          height: 30,
          child: Align(
            alignment: Alignment.topRight,
            child: const Text("Forgot Uesrname ?",
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
    double height= MediaQuery.of(context).size.height; //Gives the width
    return Container(
      constraints: BoxConstraints(
          minWidth: width,
          minHeight:60

      ),
      child: ElevatedButton(
          //focusNode: loginBtn,
          onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => const otpVerfiy()));},
          style: ButtonStyle(
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.grey)
                )
            ),
            backgroundColor: const MaterialStatePropertyAll<Color>(Color(0xff38978E)),
          ),
          child:const  Text("CONTINUE",
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
}

