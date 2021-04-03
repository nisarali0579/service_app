import 'package:flutter/material.dart';

const ktextHeadlineStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red);
const ktextSubHeadlineStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);

class CategoriesScreen extends StatefulWidget {
  static String id = 'CategoriesScreen';

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<String> showImages = <String>[
    'assets/electrician.png',
    'assets/carpenter.png',
    'assets/plumber.png',
    'assets/painter.png',
    'assets/network-administrator.png',
    'assets/Home-Decorator.png',
    'assets/Constructor.png',
    'assets/beautician.png'
  ];
  final List<String> imagesName = <String>[
    'electrician',
    'carpenter',
    'plumber',
    'painter',
    'network'
        'administrator',
    'Home'
        'Decorator',
    'Constructor',
    'beautician'
  ];

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
          'Categories',
          style: ktextHeadlineStyle,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              child:  TextField(
                decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  hintText: 'Search in categories',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Text(
              "Categories of Services",
              style: ktextHeadlineStyle,
            ),
          ),
          Container(
            height: 250,
            child: ListView(
              children: [
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  children: List.generate(
                    showImages.length,
                    (index) {
                      return Center(
                        child: Container(
                            child: Column(children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                      image: AssetImage(showImages[index]),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              imagesName[index],
                              style: ktextSubHeadlineStyle.copyWith(
                                  color: Colors.blue),
                            ),
                          )
                        ])),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
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
