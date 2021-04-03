import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:servicesease/helper/helpers.dart';
import 'package:servicesease/views/home_screen.dart';


class OtpScreen extends StatefulWidget {
  static String id = 'OtpScreen';

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Phone Number Verification", style: TextStyle(color: Helpers.redColor, fontSize: 22, fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Text("Enter the code send to\n+92-3142345987", textAlign: TextAlign.center, style: TextStyle(color: Helpers.redColor, fontSize: 18, fontWeight: FontWeight.bold),),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: OTPTextField(
              length: 6,
              width: MediaQuery.of(context).size.width,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldWidth: 50,
              fieldStyle: FieldStyle.box,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.white
              ),
              onChanged: (pin) {
                print("Changed: " + pin);
              },
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
          ),

          SizedBox(height: 50,),
          GestureDetector(
            onTap: (){
              Get.to(HomeScreen(), transition: Transition.rightToLeftWithFade);
            },
            child: Container(
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                  color: Helpers.redColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text('RESEND', style: TextStyle(color: Helpers.whiteColor, fontSize: 16, fontWeight: FontWeight.bold),),),
            ),
          ),
        ],
      ),
    );
  }
}
