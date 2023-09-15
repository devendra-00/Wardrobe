import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:myapp/screens/forgotPass_Verify/forgotpass.dart';
import 'package:myapp/screens/signup_screen.dart';


import '../../widgets/login_sign_backround.dart';
import '../../widgets/otpfield.dart';
import '../signup_screen.dart';

class otpVerfiy extends StatefulWidget {
  const otpVerfiy({super.key});

  @override
  State<otpVerfiy> createState() => _otpVerfiyState();
}

class _otpVerfiyState extends State<otpVerfiy> {

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  String _otp="";
  String realotp="2345";
  checkotp(){
    _otp=_fieldOne.text+_fieldTwo.text+_fieldThree.text+_fieldFour.text;
    if(_otp.length<=3) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text("Please fill all fields."),
      duration: Duration(seconds: 1),)
      );
    }
    else{
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(
        backgroundColor: Colors.greenAccent,
        content: Text("Usename and  Password sent sucessfully.",style: TextStyle(color: Colors.black),),
        duration: Duration(seconds: 1),),

      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Stack(
        children: [

          login_sign_background(),

          Scaffold(
              resizeToAvoidBottomInset: false,
            floatingActionButton: backButton(),
            backgroundColor:Colors.transparent,
              body:Stack(
                  children: [
                    Center(
                      child: Container(
                        //color: Colors.greenAccent,
                        height: 320,
                        width: width-40,
                        child: Text("OTP VERIFY !!",
                          style: TextStyle(color:Colors.white70,fontStyle: FontStyle.italic,fontSize: 35,fontWeight: FontWeight.w700),),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 230,
                        color: Colors.black.withOpacity(0.2),
                        width: width-40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            sentTo(),
                            otpField(),

                            Container(constraints: BoxConstraints(
                              minHeight:60),
                              width: width-50,
                              //color: Colors.grey,
                            child: verifyButton(),),
                            resend()

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
  sentTo(){
    return Container(
      child: Text("otp is sent to +91 XXXXXX0922",
        style: TextStyle(
            fontSize: 20,fontStyle: FontStyle.italic,color:Color(0xffb0b0b0)
        ),),
    );
  }
  otpField(){
    double width=MediaQuery.of(context).size.width;
    return Container(height:80 ,width: width,
      //color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OtpInput(_fieldOne, true), // auto focus
          OtpInput(_fieldTwo, false),
          OtpInput(_fieldThree, false),
          OtpInput(_fieldFour, false)
        ],
      ),
    );
  }
  verifyButton(){
    double width= MediaQuery.of(context).size.width; //Gives the width
    double height= MediaQuery.of(context).size.height; //Gives the width
    return Container(
      constraints: BoxConstraints(
          minWidth: width,
          minHeight:60

      ),
      child: ElevatedButton(
        //focusNode: loginBtn,
          onPressed: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {currentFocus.unfocus();}
            checkotp();
          },
          style: ButtonStyle(
            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.grey)
                )
            ),
            backgroundColor: const MaterialStatePropertyAll<Color>(Color(0xff38978E)),
          ),
          child:const  Text("VERIFY",
            style: TextStyle(
              fontSize: 18,
              fontWeight:FontWeight.w400,
              color: Colors.white,
            ),
          )
      ),
    );
  }
  resend(){
    return Container(
      child: Text("resend otp",
        style: TextStyle(
            fontSize: 15,color:Color(0xff38978E),
        ),),
    );
  }
}
