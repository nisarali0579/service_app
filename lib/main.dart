import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servicesease/views/onboarding_screen.dart';
import 'package:servicesease/views/home_screen.dart';
import 'package:servicesease/views/booking_screen.dart';
import 'package:servicesease/views/categories_screen.dart';
import 'package:servicesease/views/sub_category_screen.dart';
import 'package:servicesease/views/Categories Screen _1.dart';
import 'package:servicesease/views/Checkout Screen.dart';
import 'package:servicesease/views/Categories Screen – 2.dart';
import 'package:servicesease/views/Rating Screen.dart';
import 'package:servicesease/views/Confirmation Screen.dart';
import 'package:servicesease/views/otp_screen.dart';
import 'package:servicesease/views/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
      // initialRoute: 'TaineeDashboard',
      // routes: {
      //   'BookingScreen':(context) => BookingScreen(),
      //   'CategoriesScreen_1':(context) => CategoriesScreen_1(),
      //   'CategoriesScreen_2':(context) => CategoriesScreen_2(),
      //   'CategoriesScreen':(context) => CategoriesScreen(),
      //   'CheckoutScreen':(context) => CheckoutScreen(),
      //   'ConfirmationScreen':(context) => ConfirmationScreen(),
      //   'HomeScreen':(context) => HomeScreen(),
      //   'OnboardingScreen':(context) => OnboardingScreen(),
      //   'LoginScreen':(context) => LoginScreen(),
      //   'SubCategoryScreen':(context) => SubCategoryScreen(),
      //   'RatingScreen':(context) => RatingScreen(),
      //   'OtpScreen':(context) => OtpScreen(),
      // },
    );
  }
}

// Widget doneBotton() {
//   return Padding(
//     padding: EdgeInsets.symmetric(horizontal: 50),
//     child: Material(  //Wrap with Material
//       //  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
//       elevation: 18.0,
//       color: Color(0xFF801E48),
//       clipBehavior: Clip.antiAlias, // Add This
//       child: MaterialButton(
//         minWidth: 200.0,
//         height: 35,
//         color: Color(0xFF801E48),
//         child: Row(mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left:40),
//               child: new Text('My Booking',
//                   style: new TextStyle(fontSize: 20.0, color: Colors.white,)),
//             ),
//             SizedBox(width: 20,),  Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 25,)
//           ],
//         ),
//         onPressed: () {
// //          setState(() {
// //            _isNeedHelp = true;
// //          });
//         },
//       ),
//     ),
//   );
// }