import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const ktextHeadlineStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red);
const ktextSubHeadlineStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);
const kButtonTextStyle = TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold);

const activeColor = Colors.red;
const InactiveColor = Colors.grey;

enum Buttons {
  ongoig,
  complete,
  cancel,
}

class BookingScreen extends StatefulWidget {
  static String id = 'BookingScreen';
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  dispose() {
    pageController.dispose();
    super.dispose();
  }
  Color fixedJobColor = activeColor;
  Color customJobColor = InactiveColor;

  Buttons selectedColor;

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
          'Booking',
          style: ktextHeadlineStyle,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(width: 600,
              height: 50,
              //  decoration: kBoxDecoration(),
              child:
             ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     MaterialButton(
                       splashColor: Colors.red,
                       onPressed: () {
                         setState(() {
                           selectedColor = Buttons.ongoig;
                         });
                         pageController.animateToPage(0,
                             duration: Duration(seconds: 1),
                             curve: Curves.easeOutSine);
                       },
                       child: Text('Ongoing',style: kButtonTextStyle),
                       color: selectedColor==Buttons.ongoig?activeColor:InactiveColor,
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20),
                       child: MaterialButton(
                         splashColor: Colors.red,
                         onPressed: () {
                           setState(() {
                             selectedColor = Buttons.complete;
                           });
                           pageController.animateToPage(1,
                               duration: Duration(seconds: 1),
                               curve: Curves.easeOutSine);
                         },
                         child: Text('Completed',style: kButtonTextStyle,),
                         color: selectedColor==Buttons.complete?activeColor:InactiveColor,
                       ),
                     ),
                     MaterialButton(
                       splashColor: Colors.red,
                       onPressed: () {
                         setState(() {
                           selectedColor = Buttons.cancel;
                         });
                         pageController.animateToPage(2,
                             duration: Duration(seconds: 1),
                             curve: Curves.easeOutSine);
                       },
                       child: Text('Cancelled',style: kButtonTextStyle,),
                       color: selectedColor==Buttons.cancel?activeColor:InactiveColor,
                     ),
                   ],
                 ),
               ],
             )
            ),
          ),
          Container(
            height: 500,
            child: Column(
              children: [
                Container(
                  height: 500,
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (index) {},
                    children: [
                      Ongoing(),
                      Completed(),
                      Cancelled(),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
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

class Ongoing extends StatefulWidget {
  @override
  _OngoingState createState() => _OngoingState();
}

class _OngoingState extends State<Ongoing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          CardInformation(),
          CardInformation(),
          CardInformation(),
          CardInformation(),
        ],
      ),
    );
  }
}

class CardInformation extends StatelessWidget {
  const CardInformation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Container(
        decoration: kBoxDecoration(),
        child: Column(

          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Icon(Icons.account_circle,size: 50,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Tap Instalation ',
                    style:  ktextHeadlineStyle
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              child: Divider(
                thickness: 5,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Time/Date:',
                  style: ktextSubHeadlineStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'March 10,2020',
                     style:  TextStyle(
                       fontSize: 20
                     ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              child: Divider(
                thickness: 5,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Address:',
                      style: ktextSubHeadlineStyle),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Saddar Cantt Peshawar KPK,Pakistan',
                      style:  TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 200,
              child: Divider(
                thickness: 5,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child:  Text('Total:',
                    style: ktextSubHeadlineStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    'Rs 4600',
                    style:  TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

class Completed extends StatefulWidget {
  @override
  _CompletedState createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          CardInformation(),

        ],
      ),
    );
  }
}

class Cancelled extends StatefulWidget {
  @override
  _CancelledState createState() => _CancelledState();
}

class _CancelledState extends State<Cancelled> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          CardInformation(),
          CardInformation(),
          CardInformation(),
          CardInformation(),
        ],
      ),
    );
  }
}
