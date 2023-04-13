import 'package:flutter/material.dart';
import 'package:hoof_boot_rebuild/forgot_password/forgot_password.dart';



class OtpScreen extends StatefulWidget {
  OtpScreen({Key? key,required this.email}) : super(key: key);

  String email='';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 45),
                alignment: Alignment.topCenter,
                child: Text("${widget.email}",
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontFamily:"lib/font/DMSans-Bold.ttf",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                // margin: EdgeInsets.only(right: 6),
                // padding: EdgeInsets.all(10),
                child: IconButton(
                    icon: const Icon(Icons.mode_edit_outline,
                    size: 12,
                    color: Colors.white,),
                onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (c) => const ForgotPassword()));
                },
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
