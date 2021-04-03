import 'package:flutter/material.dart';

const ktextHeadlineStyle =
TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red);
const ktextSubHeadlineStyle =
TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);
const kButtonTextStyle =
TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold);

class CheckoutScreen extends StatefulWidget {
  static String id = 'CheckoutScreen';

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
      body:Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: 750,
               // height: MediaQuery.of(context).size.height*3,
                decoration: kBoxDecoration(),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Row(
                            children: [
                              Expanded(child: Text("Oreder Location:",style: ktextSubHeadlineStyle,)),
                              Expanded(child: Text(" saddar cantt, Peshawar,Kpk,Pakistan"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Row(
                            children: [
                              Expanded(child: Text("Phone Number:",style: ktextSubHeadlineStyle,)),
                              Expanded(child: Text(" +92 346 3480361"))
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Row(
                            children: [
                              Expanded(child: Text("Services Ordered::",style: ktextSubHeadlineStyle,)),
                              //Expanded(child: Text(" saddar cantt, Peshawar,Kpk,Pakistan"))
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Row(
                            children: [
                              Expanded(child: Text("Tap installation::",style: ktextSubHeadlineStyle,)),
                              Expanded(child: Text("               x1")),Expanded(child: Text("Rs.500")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Row(
                            children: [
                              Expanded(child: Text("Tap installation::",style: ktextSubHeadlineStyle,)),
                              Expanded(child: Text("               x1")),Expanded(child: Text("Rs.500")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Row(
                            children: [
                              Expanded(child: Text("Tap installation::",style: ktextSubHeadlineStyle,)),
                              Expanded(child: Text("               x1")),Expanded(child: Text("Rs.500")),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        SizedBox(width: 180,
                            child: Divider(color: Colors.black,thickness: 5,)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Row(
                            children: [
                              Expanded(child: Text("Order Total:",style: ktextSubHeadlineStyle.copyWith(fontSize: 20),)),
                              //Expanded(child: Text(" saddar cantt, Peshawar,Kpk,Pakistan"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Row(
                            children: [
                              Expanded(child: Text("Oreder Location:",style: ktextSubHeadlineStyle,)),
                              Expanded(child: Text(" saddar cantt, Peshawar,Kpk,Pakistan"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Row(
                            children: [
                              Expanded(child: Text("Oreder Location:",style: ktextSubHeadlineStyle,)),
                              Expanded(child: Text(" saddar cantt, Peshawar,Kpk,Pakistan"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                          child: Row(
                            children: [
                              Expanded(child: Text("Totall:",style: ktextSubHeadlineStyle,)),
                              Expanded(child: Text("Rs. 4600"))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Align(alignment: Alignment.bottomCenter,
                      child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(33.0),
                              side: BorderSide(
                                  color: Colors.yellow, style: BorderStyle.solid, width: 3)),
                          color: Colors.red,
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Order",
                              style: TextStyle(color: Colors.white,fontSize: 20),
                            ),
                          )),
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}


class ContinueBotton extends StatelessWidget {
  ContinueBotton({this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Material(
        color: Color(0XFFB71C1C),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(33.0),
            side: BorderSide(
                color: Colors.yellow, style: BorderStyle.solid, width: 3)),
        child: MaterialButton(
          elevation: 2,
          onPressed: onPressed,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 25,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

BoxDecoration kBoxDecoration() {
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