import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hoof_boot_rebuild/login_page/login_page.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password",
        style: TextStyle(
            color: Colors.black,
        ),),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade200,
        elevation: 0.0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 15, left: 31, right: 260),
            child: const Text(
              "Password",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 314,
            margin: const EdgeInsets.only(top: 10, left: 29, right: 29),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFdbddde)),
            child: TextFormField(
              obscureText: _isObscuredpswrd,
              obscuringCharacter: "*",
              controller: pswrdcontroller,
              keyboardType: TextInputType.text,
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(14),
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.lock,
                    size: 20,
                    color: Colors.black,
                  ),
                  suffixIcon: IconButton(
                    icon: _isObscuredpswrd
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                    color: Colors.black,
                    onPressed: () {
                      setState(() {
                        _isObscuredpswrd = !_isObscuredpswrd;
                      });
                    },
                  ),
                  hintText: "Password"),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 15, left: 31, right: 200),
            child: const Text(
              " Confirm Password",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
              height: 50,
              width: 314,
              margin:
                  const EdgeInsets.only(top: 10, left: 29, right: 29, bottom: 10),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFdbddde)),
              child: TextFormField(
                obscureText: _isObscuredcnfpswrd,
                obscuringCharacter: "*",
                controller: cnfpswrdcontroller,
                keyboardType: TextInputType.text,
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(14),
                    border: InputBorder.none,
                    prefixIcon: const Icon(
                      Icons.lock,
                      size: 20,
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                      icon: _isObscuredcnfpswrd
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          _isObscuredcnfpswrd = !_isObscuredcnfpswrd;
                        });
                      },
                    ),
                    hintText: "Confirm Password"),
              )),
          GestureDetector(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 380, left: 29, right: 29),
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(6)),
              child: const Center(
                child: Text(
                  "CONTINUE",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: "lib/font/DMSans-Medium.ttf",
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            onTap: () {
              if (pswrdcontroller.text.isNotEmpty){
                if (cnfpswrdcontroller.text.isNotEmpty) {
                  Navigator.push(context, MaterialPageRoute(builder: (c) => const LogInScreen()));
                } else {
                  Fluttertoast.showToast(
                      msg: "Please Confirm Password",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 14.0);}
              } else {
                Fluttertoast.showToast(
                    msg: "Please Enter Password",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 14.0);
              }
              },
          )
        ]
        ),
      ),
    );
  }
}
