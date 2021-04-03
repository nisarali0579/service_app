import 'package:flutter/material.dart';

const ktextHeadlineStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red);
const ktextSubHeadlineStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);
const kButtonTextStyle =
    TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold);

class RatingScreen extends StatefulWidget {
  static String id = 'RatingScreen';
  @override
  _RatingScreenState createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                decoration: kBoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Hi, Zain Ullah',
                      style: ktextHeadlineStyle,
                    ),
                    Text(
                      'How do you feel this service?',
                      style: ktextSubHeadlineStyle,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 50, horizontal: 15),
                      child: Container(
                          child: Material(
                        // elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SizedBox(
                            child: TextField(
                              //   controller: notification,
                              style: TextStyle(fontSize: 20.0),
                              maxLines: 2,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2,color: Colors.black)),
                                hintText: 'Enter Your Text',
                              ),
                            ),
                          ),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: doneBotton(),
            ),
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

Widget doneBotton() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 140),
    child: Material(  //Wrap with Material
     // shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
      elevation: 18.0,
      color: Color(0xFF801E48),
      clipBehavior: Clip.antiAlias, // Add This
      child: MaterialButton(
        minWidth: 200.0,
        height: 35,
        color: Color(0xFF801E48),
        child: new Text('Done',
            style: new TextStyle(fontSize: 16.0, color: Colors.white)),
        onPressed: () {
//          setState(() {
//            _isNeedHelp = true;
//          });
        },
      ),
    ),
  );
}
