import 'package:flutter/material.dart';
const ktextHeadlineStyle =
TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red);
const ktextSubHeadlineStyle =
TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);
const kButtonTextStyle =
TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold);

class ConfirmationScreen extends StatefulWidget {
  static String id = 'ConfirmationScreen';
  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.red,
            ),
            onPressed: null),
        centerTitle: true,
        title: Text(
          'Checkout',
          style: ktextHeadlineStyle,
        ),
      ),
      body: Column(
        children: [
          Container(child: Image.asset('assets/success.png')),
          SizedBox(height: 20,),
          Text('Thank You',style: ktextHeadlineStyle,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Your order has been successfully submitted, our professional will be available soon.',style: ktextSubHeadlineStyle,),
          ),
          SizedBox(height: 220,),
          doneBotton()
        ],
      ),
    );
  }
}
//
// class ContinueBotton extends StatelessWidget {
//   ContinueBotton({this.onPressed});
//
//   final Function onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 30),
//       child: Material(
//         color: Color(0XFFB71C1C),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(33.0),
//             side: BorderSide(
//                 color: Colors.yellow, style: BorderStyle.solid, width: 3)),
//         child: MaterialButton(
//           elevation: 2,
//           onPressed: onPressed,
//           child: Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 60),
//                 child: Text(
//                   "My Booking s",
//                   style: TextStyle(color: Colors.white, fontSize: 25),
//                 ),
//               ),
//               SizedBox(
//                 width: 70,
//               ),
//               Icon(
//                 Icons.arrow_forward_ios_rounded,
//                 size: 25,
//                 color: Colors.white,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

Widget doneBotton() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 50),
    child: Material(  //Wrap with Material
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(12.0) ),
      elevation: 18.0,
      color: Color(0xFF801E48),
      clipBehavior: Clip.antiAlias, // Add This
      child: MaterialButton(
        minWidth: 200.0,
        height: 35,
        color: Color(0xFF801E48),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:40),
              child: new Text('My Booking',
                  style: new TextStyle(fontSize: 20.0, color: Colors.white,)),
            ),
          SizedBox(width: 20,),  Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 25,)
          ],
        ),
        onPressed: () {
//          setState(() {
//            _isNeedHelp = true;
//          });
        },
      ),
    ),
  );
}