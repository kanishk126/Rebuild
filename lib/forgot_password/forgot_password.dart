import 'package:flutter/material.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}
TextEditingController textcontroller = TextEditingController();

class _ForgotPasswordState extends State<ForgotPassword> {
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
                  child: const Text("Forgot Password",
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
                  child: const Text("To reset your password, you need your email or mobile number that can be authenticated",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily:"lib/font/DMSans-Bold.ttf",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                )
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 64,left: 24,right: 280),
                  child: const Text("Email"),
                ),

                Container(
                  height: 50,
                  width: 314,
                  margin: const EdgeInsets.only(top: 10,left: 29,right: 29),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(11)),
                      color: Color(0xFFdbddde)
                  ),
                  child: TextFormField(
                      controller: textcontroller,
                      obscureText: true,
                      obscuringCharacter: "*",
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email,
                            size: 20,
                            color: Colors.black),
                        hintText: "Email Id",
                        contentPadding: EdgeInsets.only(top: 14),
                        focusColor: Colors.white,
                      ),
                    ),
                  ),
                Container(
                  width: 314,
                  height: 50,
                  margin: const EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      elevation: 5,
                      shadowColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      )
                    ),
                    child: const Text("Get OTP",
                      style: TextStyle(

                      ),
                    ),

                    onPressed: (){

                    },
                  ),
                )
              ]
            ),
    );
  }
}
