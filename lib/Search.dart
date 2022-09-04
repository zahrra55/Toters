import 'package:flutter/material.dart';
import 'package:toters/butler.dart';
import 'package:toters/homePage.dart';
import 'package:toters/orders.dart';
import 'package:toters/profile.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  final List types = [
    {
      'photo': 'images/happyHour.jpg',
      'title': 'Happy Hour',
      'describtion': 'Only for one hour',
      'stores': 3,
    },
    {
      'photo': 'images/natcho.jpg',
      'title': 'Weekly Discounts',
      'describtion': 'Get your discount now!',
      'stores': 5,
    },
    {
      'photo': 'images/burgerFingers.jpg',
      'title': 'Cashback',
      'describtion': 'Earn more money',
      'stores': 4,
    },
    {
      'photo': 'images/tolebs.jpg',
      'title': 'Flower Bouquets',
      'describtion': 'Hand-picked Flowers',
      'stores': 1,
    },
    {
      'photo': 'images/spagetee.jpg',
      'title': 'Definitely Eatalian',
      'describtion': 'The world\'s favorites',
      'stores': 3,
    },
    {
      'photo': 'images/HeadPhones.jpg',
      'title': 'Retail on Toters',
      'describtion': 'Shop What you like',
      'stores': 6,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.search,
          color: Colors.black,
        ),
        title: Text(
          'Search for store or item ',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 608,
                child: ListView.builder(
                    itemCount: types.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            top: 20, bottom: 20, left: 10, right: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(types[index]['photo']),
                                fit: BoxFit.cover,
                              )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  types[index]['title'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Text(types[index]['describtion']),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '${types[index]['stores']} stors',
                                  style: TextStyle(color: Color(0xFF1fad90)),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Color(0xFF06b493),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/delivryaMan.jpg',
                  width: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order anything!',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'editors now use Lorem Ipsum as their',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                    Text(
                      'for lorem ipsum will uncover many web infancy.',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF1fad90),
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => page1()));
                  },
                  child: Icon(Icons.home_filled)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => search()));
                  },
                  child: Icon(Icons.search_rounded)),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => butlerPage()));
                },
                child: Image.asset(
                  'images/photo_2022-08-26_14-53-44.jpg',
                  width: 27,
                  height: 27,
                ),
              ),
              label: 'butler',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => orderPage()));
                },
                child: Icon(Icons.list_alt_rounded),
              ),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => searcher()));
                },
                child: Icon(Icons.person_outline),
              ),
            ),
          ]),
    );
  }

  Container Offers(String img, String title, String describtion, int no_stros) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            )),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text(describtion),
              SizedBox(
                height: 20,
              ),
              Text(
                '$no_stros stors',
                style: TextStyle(color: Color(0xFF1fad90)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
