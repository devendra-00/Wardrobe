import 'package:flutter/material.dart';
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;

  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.top,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        showCursor: false,
        cursorColor:Colors.transparent,
        decoration: const InputDecoration(
          focusColor: Color(0xffb0b0b0),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey,width: 2)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white,width: 2)
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffb0b0b0),width: 2)
            ),
            counterText: '',
        ),
        style: const TextStyle(
            color: Color(0xff38978E),
            fontSize: 30,
            fontWeight: FontWeight.w500
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}