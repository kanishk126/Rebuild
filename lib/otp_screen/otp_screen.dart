import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hoof_boot_rebuild/enter_new_password/new_password.dart';
import 'package:hoof_boot_rebuild/forgot_password/forgot_password.dart';



class OtpScreen extends StatefulWidget {
  OtpScreen({Key? key,required this.email}) : super(key: key);


  String email='';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpcontroller1 = TextEditingController();
  TextEditingController otpcontroller2 = TextEditingController();
  TextEditingController otpcontroller3 = TextEditingController();
  TextEditingController otpcontroller4 = TextEditingController();

  final focuse1 = FocusNode();
  final focuse2 = FocusNode();
  final focuse3 = FocusNode();
  final focuse4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black,),
        backgroundColor: Colors.grey.shade200,
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 18),
            alignment: Alignment.topCenter,
            child: const Text("Check Your Email",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily:"lib/font/DMSans-Bold.ttf",
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 11,left: 31,right: 30),
              child: const Text("We have sent the reset password to the email address",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily:"lib/font/DMSans-Bold.ttf",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(widget.email,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontFamily:"lib/font/DMSans-Bold.ttf",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.only(left: 20,top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: IconButton(
                    icon: const Icon(Icons.mode_edit_outline,
                    size: 15,
                    color: Colors.white,),
                onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (c) => const ForgotPassword()));
                },
                ),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 55),
                width: 50,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1)
                    ],
                    onChanged: (value){
                      if(value.length.isEqual(1)){
                        setState(() {
                          FocusScope.of(context).requestFocus(focuse1);
                        });
                      }
                    },
                    controller: otpcontroller1,
                    keyboardType: TextInputType.number,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                        // contentPadding: EdgeInsets.all(14),
                        border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 60,
                margin: EdgeInsets.only(top: 55,left: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),

                child: Center(
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1)
                    ],
                    onChanged: (value){
                      if(value.length.isEqual(1)){
                        setState(() {
                          FocusScope.of(context).requestFocus(focuse2);
                        });
                      }
                    },
                    controller: otpcontroller2,
                    focusNode: focuse1,
                    keyboardType: TextInputType.number,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                      // contentPadding: EdgeInsets.all(14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 60,
                margin: EdgeInsets.only(top: 55,left: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1)
                    ],
                    onChanged: (value){
                      if(value.length.isEqual(1)){
                        setState(() {
                          FocusScope.of(context).requestFocus(focuse3);
                        });
                      }
                    },
                    controller: otpcontroller3,
                    focusNode: focuse2,
                    keyboardType: TextInputType.number,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                      // contentPadding: EdgeInsets.all(14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Container(
                width: 50,
                height: 60,
                margin: EdgeInsets.only(top: 55,left: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1)
                    ],
                    onChanged: (value){
                      if(value.length.isEqual(1)){
                        setState(() {
                          FocusScope.of(context).requestFocus(focuse4);
                        });
                      }
                    },
                    controller: otpcontroller4,
                    focusNode: focuse3,
                    keyboardType: TextInputType.number,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                      // contentPadding: EdgeInsets.all(14),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),

          Expanded(child: Container()),

          GestureDetector(
            child: Container(
              width:MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 30,right: 30, bottom: 53),
              padding: EdgeInsets.only(top: 16,bottom:16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color:Theme.of(context).primaryColor
              ),
                child: const Center(
                  child: Text("VERIFY",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: "lib/font/DMSans-Medium.ttf",
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            onTap: (){
              if(otpcontroller1.text.isNotEmpty){
                if(otpcontroller2.text.isNotEmpty){
                  if(otpcontroller3.text.isNotEmpty){
                    if(otpcontroller4.text.isNotEmpty){
                      Navigator.push(context, MaterialPageRoute(builder: (c)=> const NewPassword()));
                    }else{
                      Fluttertoast.showToast(
                      msg: "Please Enter 4th digit of OTP",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 14.0);}
                  }else{
                    Fluttertoast.showToast(
                        msg: "Please Enter 3rd and 4th digit of OTP",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 14.0);}
                }else {
                  Fluttertoast.showToast(
                      msg: "Please Enter 2nd 3rd and 4th digit of OTP",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 14.0);}
                  }else{
                Fluttertoast.showToast(
                    msg: "Please Enter 1st digit of OTP",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 14.0);}
            }
            ),
        ],
      )
    );
  }
}
