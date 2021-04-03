import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicesease/helper/helpers.dart';
import 'package:servicesease/views/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;
  bool loading = false;
  final _formKey = GlobalKey<FormState>();

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                scale: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
//              width: MediaQuery.of(context).size.width * 0.8,
                  decoration:  kBoxDecoration(),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Text(
                            "Name",
                            style: TextStyle(
                              color: Helpers.redColor,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Helpers.redColor, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Helpers.redColor, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: 'Enter your name',
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.person,
                                color: Helpers.redColor,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Text(
                            "Phone No",
                            style: TextStyle(
                              color: Helpers.redColor,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Helpers.redColor, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Helpers.redColor, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintText: '+923129743275',
                              filled: true,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.call,
                                color: Helpers.redColor,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(width: 2.0, color: Colors.white),
                                  left: BorderSide(width: 2.0, color: Colors.white),
                                  right:
                                      BorderSide(width: 2.0, color: Colors.white),
                                  bottom:
                                      BorderSide(width: 2.0, color: Colors.white),
                                ),
                              ),
                              child: Checkbox(
                                  activeColor: Colors.black,
                                  checkColor: Helpers.redColor,
                                  value: rememberMe,
                                  onChanged: _onRememberMeChanged),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Accept to Terms and Conditions Policy",
                              style:
                                  TextStyle(color: Helpers.redColor, fontSize: 14),
                            )
                          ],
                        ),

                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: InkWell(
                                onTap: (){
                                  Get.to(OtpScreen(), transition: Transition.rightToLeftWithFade);
                                },
                                child: Container(
                                  height: 50,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: Helpers.redColor,
                                      borderRadius: BorderRadius.all(Radius.circular(10))),
                                  child: Center(
                                    child: loading
                                        ? CircularProgressIndicator()
                                        : Text(
                                      'Login',
                                      style: TextStyle(
                                        color: Helpers.whiteColor,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              InkWell(
                onTap: (){
                  Get.to(OtpScreen(), transition: Transition.rightToLeftWithFade);
                },
                child: Text(
                  "SKIP for Now",
                  style: TextStyle(
                      color: Helpers.redColor,
                      fontSize: 16,
                      fontStyle: FontStyle.italic),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}BoxDecoration kBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  );
}