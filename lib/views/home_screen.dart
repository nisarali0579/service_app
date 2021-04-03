import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const ktextHeadlineStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red);
const ktextSubHeadlineStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.red);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  final List<String> imgList = [
    'assets/welcome.png',
    'assets/affordable.png',
    'assets/painter.png',
    // 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    // 'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    // 'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    // 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
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
          'Service Ease',
          style: ktextHeadlineStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
                decoration: kBoxDecoration(),
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.vertical,
                    autoPlay: true,
                  ),
                  items: imgList
                      .map((item) => Container(
                            child: Center(
                                child: Image.asset(item,
                                    fit: BoxFit.cover, width: 1000)),
                          ))
                      .toList(),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.green,
                    onTap: () {},
                    child: Text(
                      "Categories",
                      style: ktextSubHeadlineStyle,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.green,
                    child: Text(
                      "see all",
                      style: ktextSubHeadlineStyle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: kBoxDecoration(),
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(8),
                  itemCount: showImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        //decoration: kBoxDecoration(),
                        height: 50,
                        //color: Colors.amber[colorCodes[index]],
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: 100,
                                    width: 150,
                                    decoration: new BoxDecoration(
                                      image: new DecorationImage(
                                        image:
                                            new AssetImage(showImages[index]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  )
                                  // child: Image.asset( showImages[index]),)
                                  ),
                            ),
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  imagesName[index],
                                  style: ktextSubHeadlineStyle.copyWith(
                                      color: Colors.blue),
                                ),
                              ),
                            )),
                          ],
                        )
                        //  Text('Entry ${entries[index]}')
                        );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Recommended for yor",
                style: ktextSubHeadlineStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                decoration: kBoxDecoration(),
                child: GridView.count(
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
                                ),),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Why Choose Us",
                style: ktextHeadlineStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: kBoxDecoration(),
                // height: 200,
                // width: 200,
                child:
                Column(
                  children: [
                    IconTextButton(name: "User friendly Service",icon: Icons.account_circle,onTap: (){},),
                    IconTextButton(name: "User friendly Service",icon: Icons.account_circle,onTap: (){},),
                    IconTextButton(name: "User friendly Service",icon: Icons.account_circle,onTap: (){},),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(icon: Icon(Icons.ac_unit,color: Colors.red,), onPressed: (){}),
          ),
          IconButton(icon: Icon(Icons.ac_unit,color: Colors.red,), onPressed: (){}),
          IconButton(icon: Icon(Icons.ac_unit,color: Colors.red,), onPressed: (){}),
          Padding(
            padding: const EdgeInsets.only(),
            child: IconButton(icon: Icon(Icons.ac_unit,color: Colors.red,), onPressed: (){}),
          ),
        ],
      ),
    );
  }
}

class IconTextButton extends StatelessWidget {
  IconTextButton({this.name,this.icon,this.onTap});
  final String name;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: InkWell(
onTap: onTap,
        child: Row(
          children: [
        Icon(icon,size: 30,),SizedBox(width: 20,),
        Text(
          name,
          style: ktextHeadlineStyle,
        )
          ],
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
