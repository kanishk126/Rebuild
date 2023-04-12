import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:hoof_boot_rebuild/login_page/login_page.dart';

import '../home_screen/home_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController fullnmcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController contactcontroller = TextEditingController();
  TextEditingController zipcontroller = TextEditingController();
  TextEditingController pswrdcontroller = TextEditingController();
  TextEditingController cnfpswrdcontroller = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  var _isObscuredpswrd = true;
  var _isObscuredcnfpswrd = true;

  @override
  void initState() {
    // _isObscuredpswrd = true;
    // _isObscuredcnfpswrd = true;
    super.initState();
  }

  bool isCheckedtc = false;
  bool isCheckedpp = false;
  final _formKey = GlobalKey<FormState>();
  // String _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 18),
              child: const Text("Create an Account",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 11),
              child: const Text("Create an account to get started with our services",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 83,left: 31,right: 260),
              alignment: Alignment.topLeft,
              child: const Text("Full Name",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
              ),
              ),
            ),
            Container(
                height: 50,
                width: 314,
                margin: const EdgeInsets.only(top: 10,left: 29, right: 29),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFdbddde)
                ),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: fullnmcontroller,
                  keyboardType: TextInputType.name,
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(14),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person,
                        size: 20,
                        color: Colors.black),
                    hintText: "Full Name"
                ),
                  // validator: (value) {
                  //   if(value?.isEmpty){
                  //     return "Please Enter full name";
                  //   }
                  //   return null;
                  // },
                  // onSaved: (value){
                  //   _name = value;
                  // },
            ),
              )
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 15, left: 31, right: 260),
              child: const Text("Email",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
              ),
            ),
            Container(
              height: 50,
              width: 314,
              margin: const EdgeInsets.only(top: 10,left: 29, right: 29),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFdbddde)
              ),
              child: TextFormField(
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Theme.of(context).primaryColor,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(14),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.email,
                    size: 20,
                    color: Colors.black,
                ),
                  hintText: "Email Id"
              ),
            )
            ),

            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 15, left: 31, right: 200),
              child: const Text("Phone Number",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: 86,
                  margin: const EdgeInsets.only(top: 10,left: 29),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFdbddde)
                  ),
                ),

                    Container(
                  height: 50,
                  width: 200,
                  margin: const EdgeInsets.only(top: 10,left: 14,right: 29),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFdbddde)),
                  child: Container(
                    margin: const EdgeInsets.only(top: 10,left: 10),
                        width: 197,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFdbddde)),
                        child: TextFormField(
                          controller: contactcontroller,
                          keyboardType: TextInputType.number,
                          cursorColor: Theme.of(context).primaryColor,
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.all(14),
                              border: InputBorder.none,
                              hintText: "Phone Number"
                          ),
                        ),
                      ),
                    ),
              ]
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 15, left: 31, right: 260),
                child: const Text("Zip Code",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                  height: 50,
                  width: 314,
                  margin: const EdgeInsets.only(top: 10,left: 29, right: 29),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFdbddde)
                  ),
                  child: TextFormField(
                    controller: zipcontroller,
                    keyboardType: TextInputType.number,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(14),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.home,
                          size: 20,
                          color: Colors.black,
                        ),
                        hintText: "Zip Code"
                    ),
                  )
              ),

            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 15, left: 31, right: 260),
              child: const Text("Password",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            Container(
                height: 50,
                width: 314,
                margin: const EdgeInsets.only(top: 10,left: 29, right: 29),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFFdbddde)
                ),
                child: TextFormField(
                  obscureText: _isObscuredpswrd,
                  obscuringCharacter: "*",
                  controller: pswrdcontroller,
                  keyboardType: TextInputType.text,
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(14),
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.lock,
                        size: 20,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                        icon: _isObscuredpswrd ? const Icon(Icons.visibility_off): const Icon(Icons.visibility),
                        color: Colors.black,
                        onPressed: (){
                          setState(() {
                            _isObscuredpswrd = !_isObscuredpswrd;
                          });
                        },
                      ),
                      hintText: "Password"
                  ),
                )
            ),Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 15, left: 31, right: 200),
              child: const Text(" Confirm Password",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            Container(
                height: 50,
                width: 314,
                margin: const EdgeInsets.only(top: 10,left: 29, right: 29,bottom: 10),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFFdbddde)
                ),
                child: TextFormField(
                  obscureText: _isObscuredcnfpswrd,
                  obscuringCharacter: "*",
                  controller: cnfpswrdcontroller,
                  keyboardType: TextInputType.text,
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(14),
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.lock,
                        size: 20,
                        color: Colors.black,
                      ),
                      suffixIcon: IconButton(
                        icon: _isObscuredcnfpswrd ? const Icon(Icons.visibility_off): const Icon(Icons.visibility),
                        color: Colors.black,
                        onPressed: (){
                          setState(() {
                            _isObscuredcnfpswrd = !_isObscuredcnfpswrd;
                          });
                        },
                      ),
                      hintText: "Confirm Password"
                  ),
                )
            ),
        Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18,top: 10),
                child: Checkbox(value: isCheckedtc,
                    activeColor: Theme.of(context).primaryColor,
                    checkColor: Colors.white,
                    onChanged: (val){
                      setState(() {
                        isCheckedtc = val!;
                      });
                    }
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12,),
                child: const Text("""Term and condition are use to govern the 
 relationship with your user.""",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ]
        ),

            Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18,top: 10),
                child: Checkbox(value: isCheckedpp,
                    activeColor: Theme.of(context).primaryColor,
                    checkColor: Colors.white,
                    onChanged: (val){
                      setState(() {
                        isCheckedpp = val!;
                      });
                    }
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12,),
                child: const Text("""Privacy Policies are legally required almost
everywhere in the world.""",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ]
        ),

            Container(
              width: 314,
              height: 50,
              margin: const EdgeInsets.only(top: 45,left: 29,right: 29),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    shadowColor: Colors.grey.shade500,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    )
                ),
                child: const Text("SIGN UP",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: "lib/font/DMSans-Medium.ttf",
                    fontSize: 15,
                  ),
                ),
                onPressed: (){
                  if(fullnmcontroller.text.isNotEmpty){
                    if(emailcontroller.text.isNotEmpty){
                      if(contactcontroller.text.isNotEmpty){
                        if(zipcontroller.text.isNotEmpty){
                          if(pswrdcontroller.text.isNotEmpty){
                            if(cnfpswrdcontroller.text.isNotEmpty){
                              if(cnfpswrdcontroller.text.length.isGreaterThan(8)&& cnfpswrdcontroller.text.length.isLowerThan(13)){
                                if(isCheckedpp && isCheckedtc ) {
                                  Navigator.push(context, MaterialPageRoute(builder: (c) => const HomeScreen()));
                                }else{
                                  Fluttertoast.showToast(
                                      msg: "Please Accept Terms Conditions and Privacy Policies",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 14.0);}
                              }else{
                                Fluttertoast.showToast(
                                msg: "Please Enter valid Password",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 14.0);}
                            }else{
                              Fluttertoast.showToast(
                                  msg: "Please Confirm Password",
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
                              msg: "Please Enter Your Zipcode",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 14.0);}
                      }else{
                        Fluttertoast.showToast(
                            msg: "Please Enter Your Phone Number",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 14.0);}
                    }else{
                      Fluttertoast.showToast(
                          msg: "Please Enter Your Email Id",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 14.0);}
                  }else{
                    Fluttertoast.showToast(
                        msg: "Please Enter Your Full Name",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 14.0);}
                  }
                )
              ),
            Container(
              width: 314,
              height: 50,
              color: const Color(0xFFE6E6E6),
              margin: const EdgeInsets.only(top: 19, left: 29, right: 29),
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
              margin: const EdgeInsets.only(right: 82,left: 82,top: 16,bottom: 51),
              child: Text.rich(
                  TextSpan
                    (text: "Already have an account?",
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      children: [
                        WidgetSpan(
                            child: GestureDetector(
                              child: Text(" LogIn",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (c)=>const LogInScreen()));
                              },
                            )
                        ),
                      ]
                  )
              ),
            ),
          ]
        ),
    ),
    );
  }
}
