import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicesease/helper/helpers.dart';
import 'package:servicesease/views/login_screen.dart';

class LandingScreen extends StatefulWidget {
  static String id = 'LandingScreen';
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Image.asset("assets/logo.png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: InkWell(
                onTap: (){
                  Get.to(LoginScreen(), transition: Transition.rightToLeftWithFade);
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    color: Helpers.redColor,
                    border: Border.all(color: Colors.white54, width: 3.0),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  child: Center(
                      child: Text(
                    'GET STARTED',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
