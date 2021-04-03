import 'package:flutter/material.dart';

const ktextHeadlineStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red);
const ktextSubHeadlineStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);
const kButtonTextStyle =
    TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold);

class CategoriesScreen_2 extends StatefulWidget {
  static String id = 'CategoriesScreen_2';
  @override
  _CategoriesScreen_2State createState() => _CategoriesScreen_2State();
}

class _CategoriesScreen_2State extends State<CategoriesScreen_2> {
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
          'Booking Service',
          style: ktextHeadlineStyle,
        ),
      ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                    child: Material(
                      // elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          width: 350.0,
                          height: 100.0,
                          child: TextField(
                            //   controller: notification,
                            style: TextStyle(fontSize: 20.0),
                            maxLines: 10,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 2)),
                              hintText: 'Enter Your Text',
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
              Text(
                'When you need service',
                style: ktextHeadlineStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: kBoxDecoration().copyWith(color: Colors.redAccent),
                //   color: Colors.redAccent,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Icon(Icons.radio_button_checked),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'As Soon as Possible',
                        style: ktextHeadlineStyle.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  decoration: kBoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.radio_button_off),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Schedule an Order',
                          style: ktextHeadlineStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: kBoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("When will you like us to come")),
                          FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(33.0),
                                  side: BorderSide(
                                      color: Colors.yellow, style: BorderStyle.solid, width: 3)),
                              color: Colors.red,
                              onPressed: () {},
                              child: Text(
                                "send data",
                                style: TextStyle(color: Colors.white),
                              ))
                          // ),
                        ],
                      ),
                      SizedBox(width: 270,
                        child: Divider(
                          color: Colors.black,thickness: 4,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(child: Text("When will you like us to come")),
                          FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(33.0),
                                  side: BorderSide(
                                      color: Colors.yellow, style: BorderStyle.solid, width: 3)),
                              color: Colors.red,
                              onPressed: () {},
                              child: Text(
                                "send data",
                                style: TextStyle(color: Colors.white),
                              ))
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 120,),
              ContinueBotton(
                onPressed: () {},
              ),
            ],
          ),
        )
        ],
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
