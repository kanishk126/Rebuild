import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hoof_boot_rebuild/forgot_password/forgot_password.dart';
import 'package:hoof_boot_rebuild/home_screen/home_screen.dart';
import 'package:hoof_boot_rebuild/signup_screen/signup_screen.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController textcontroller = TextEditingController();
  TextEditingController pswrdcontroller = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  var _isObscured1;


  @override
  void initState() {
    _isObscured1 = true;
    super.initState();
  }
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade200,
      child: Column(
            children: [
              Container(
                color: Colors.grey.shade200,
              ),
              Container(
              width: 500,
                color: Colors.grey.shade200,
                margin: const EdgeInsets.only(bottom: 62),
                child: Container(
                  width: 215,
                  height: 75,
                  margin: const EdgeInsets.only(top: 117,right: 80, left: 80),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                    image: const DecorationImage(
                        image: AssetImage('lib/images/splash_screen_w_bg.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(left: 24),
                child: const Text("Email Id")),
            Container(
                  height: 50,
                  width: 314,
                  margin: const EdgeInsets.only(top: 10,left: 29, right: 29),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFdbddde)
                    // color: Colors.white
                  ),
                  child: TextFormField(
                    controller: textcontroller,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.email_outlined,
                      size: 20,
                        color: Colors.black),
                      hintText: "Email Id",
                      contentPadding: EdgeInsets.only(top: 14),
                      focusColor: Color(0xFFdbddde),
                    ),
                  ),
                ),
              Container(
                alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(top: 10,left: 24),
                  child: const Text("Password")),

              Container(
                  height: 50,
                  width: 314,
                  margin: const EdgeInsets.only(top: 10,left: 29, right: 29),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFFdbddde)
                  ),
                  child: TextFormField(
                    controller: pswrdcontroller,
                    obscureText: _isObscured1,
                    obscuringCharacter: "*",
                    keyboardType: TextInputType.text,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.lock,
                      size: 20,
                        color: Colors.black),
                      suffixIcon: IconButton(
                        icon: _isObscured1 ? const Icon(Icons.visibility_off): const Icon(Icons.visibility),
                        color: Colors.black,
                        onPressed: (){
                          setState(() {
                            _isObscured1 = !_isObscured1;
                          });
                        },
                      ),
                      hintText: "Password",
                      contentPadding: const EdgeInsets.only(top: 14),
                      focusColor: Colors.white,
                    ),
                  ),
                ),

             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 16,top: 10),
                   child: Checkbox(value: isChecked,
                        activeColor: Theme.of(context).primaryColor,
                        checkColor: Colors.white,
                        onChanged: (val){
                      setState(() {
                        isChecked = val!;
                      });
                    }
                    ),
                 ),
                  Container(
                    margin: const EdgeInsets.only(top: 12),
                    child: const Text('Remember Me',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                 Container(
                   margin: const EdgeInsets.only(left: 88,top: 12),
                   child: GestureDetector(
                     child: const Text("Forgot Password ?",
                       style: TextStyle(
                         fontSize: 12,
                         fontWeight: FontWeight.w400,
                         color: Colors.black,
                       )
                     ),
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (c)=>const ForgotPassword()));
                     },
                   ),
                 )
                ]
             ),


              ////////// Login Button//////

              Container(
                width: 314,
                height: 50,
                margin: const EdgeInsets.only(top: 34,left: 29,right: 29),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shadowColor: Colors.grey.shade500,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    )
                  ),
                    child: const Text("LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: "lib/font/DMSans-Medium.ttf",
                      fontSize: 15,
                    ),
                    ),
                  onPressed: (){
                    if(textcontroller.text.isNotEmpty){
                      if(pswrdcontroller.text.isNotEmpty){
                        if(pswrdcontroller.text.length.isLowerThan(13) && pswrdcontroller.text.length.isGreaterThan(4)){
                          Navigator.push(context, MaterialPageRoute(builder: (c) => const HomeScreen()));
                      }else{
                        Fluttertoast.showToast(
                        msg: "Please Enter Valid Password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 14.0);}
                      }else{
                        Fluttertoast.showToast(
                        msg: "Please Enter Password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 14.0);}
                    }else{
                      Fluttertoast.showToast(
                          msg: "Please Enter Your register Email Id",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 14.0);}
                  },
                ),
              ),


              //////////Login With Google Button///////

              Container(
                width: 314,
                height: 50,
                color: const Color(0xFFE6E6E6),
                margin: const EdgeInsets.only(top: 23, left: 29, right: 29),
                child: ElevatedButton.icon(
                  label: const Center(
                    child: Text('LOGIN WITH GOOGLE',
                      style: TextStyle(
                      color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                    ),
                    ),
                  ),
                  icon: Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("lib/icon/google.png"),
                    ),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.only(right: 70)),
                    backgroundColor: MaterialStateProperty.all(const Color(0xFFE6E6E6)),
                    shadowColor: MaterialStateProperty.all(Colors.grey),
                    elevation: MaterialStateProperty.all(6.0)
                  ),
                  onPressed: () {

                  },
                ),
              ),

              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 82,left: 82,top: 16),
                  child: Text.rich(
                    TextSpan
                      (text: "Don't have an account yet?",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        WidgetSpan(
                            child: GestureDetector(
                              child: Text(" SignUp",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                            ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (c)=>const SignUpScreen()));
                              },
                            )
                        ),
                      ]
                    )
                  ),
                ),
            ]
      )
    );
  }
}
