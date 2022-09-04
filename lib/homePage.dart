import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:toters/Details.dart';
import 'package:toters/Search.dart';
import 'package:toters/butler.dart';
import 'package:toters/orders.dart';
import 'package:toters/profile.dart';

class page1 extends StatefulWidget {
  final String photo = 'images/kima.jpg';
  final String name = 'kima';
  final double rate = 4.2;
  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivering To',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            Row(
              children: [
                Text(
                  'Baghdad,Iraq',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.black,
                  size: 27,
                )
              ],
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.notifications_outlined,
                color: Colors.grey.withOpacity(0.8),
                size: 26,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'images/filter_settings_sliders_icon.png',
                width: 22,
              ),
              SizedBox(
                width: 8,
              ),
            ],
          ),
        ],
        elevation: 0.4,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Green',
                              style: TextStyle(
                                color: Color(0xFF1fad90),
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.info_outline,
                              color: Color(0xFF1fad90),
                              size: 25,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            dashedLine(),
                            SizedBox(
                              width: 40,
                            ),
                          ],
                        ),
                        Text(
                          '10 more orders by August 31 to reach the Gold.',
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Pts',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                //Icon(Icons.arrow_forward),
                                Image.asset(
                                  'images/arrowNext.png',
                                  width: 19,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                    items: [
                      crauselItems('images/school.jpg'),
                      crauselItems('images/fiftyPeresent.jpg'),
                      crauselItems('images/orderNow.jpg'),
                    ],
                    options: CarouselOptions(
                      height: 210,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeInToLinear,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FoodTypes('images/burger.jpg', 'meat'),
                    FoodTypes('images/shopping.jpg', 'meat'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FoodTypes('images/delivery.jpg', 'meat'),
                    FoodTypes('images/Wallet.jpg', 'meat'),
                  ],
                ),
                Line(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cashback',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 110,
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF1fad90), size: 13),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Earn back credits and redeem them on your future orders',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'from the same store!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      meal(widget.photo, widget.name, 13, 30, widget.rate,
                          'lunch'),
                      meal('images/burgerz.jpg', 'Burger classic', 13, 30, 4.1,
                          'dinner'),
                      meal('images/gaas.jpg', 'Shawarma', 13, 30, 4.4, 'lunch'),
                      ViewAll(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Line(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Breakfast Time',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 150,
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF1fad90), size: 13),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Order now from a wide selection of breakfast specials!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 145,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      FoodTypescircle('images/breakfast1.jpg', 'Saray Kibbeh'),
                      FoodTypescircle('images/breakfast2.jpg', 'Beef Kabab'),
                      FoodTypescircle(
                          'images/breakfast3.jpg', 'Baklaa With\nGhee'),
                      Container(
                          width: 120,
                          height: 40,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Color(0xFF1fad90),
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'View all',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Line(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cashback',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 110,
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: Color(0xFF1fad90), size: 13),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Earn back credits and redeem them on your future orders',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'from the same store!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      meal('images/meat2.jpg', 'Meat collection', 23, 45, 4.1,
                          '45000'),
                      meal(
                          'images/meat3.jpg', 'Beef mrat', 23, 45, 4.1, '8000'),
                      meal('images/meat4.jpg', 'Groung meat', 56, 78, 3.5,
                          '10000'),
                      ViewAll(),
                    ],
                  ),
                ),
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

  Container Line() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 10,
      color: Colors.grey.withOpacity(0.1),
      margin: EdgeInsets.only(top: 12, bottom: 10),
    );
  }

  Container FoodTypes(String img, String title) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0.1,
            blurRadius: 6,
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: 180,
      height: 120,
      child: Column(
        children: [
          Container(
            width: 100,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Container FoodTypescircle(String img, String title) {
    return Container(
      margin: EdgeInsets.only(left: 7, right: 4, top: 7),
      padding: EdgeInsets.all(5),
      width: 110,
      height: 80,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 7),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Container meal(String photo, String name, int min, int max, double rate,
      String mealname) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 4, top: 7),
      padding: EdgeInsets.only(left: 15, top: 7),
      width: 400,
      height: 244,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                width: 400,
                height: 260,
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(photo),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 220,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      timePereiod(min, max),
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => detailPage(
                                  img: photo, Name: name, Rate: rate)));
                        },
                        child: Text(
                          name,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        width: 205,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '\$\$ . $mealname',
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xFF1fad90),
                                  size: 17,
                                ),
                                Text(
                                  '$rate',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 9),
                                ),
                              ],
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 70,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFea6309).withOpacity(0.07),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.credit_card,
                              color: Color(0xFFea6309),
                              size: 17,
                            ),
                            Text(
                              ' 25% off',
                              style: TextStyle(
                                  color: Color(0xFFea6309), fontSize: 9),
                            ),
                          ],
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 90,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.blue.withOpacity(0.1),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.blue,
                                  size: 16,
                                ),
                                Text(
                                  '  Earn Points',
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 9),
                                ),
                              ],
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container timePereiod(int min, int max) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 5),
      width: 70,
      height: 38,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0.1,
            blurRadius: 4,
          )
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$min - $max',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            'mins',
            style: TextStyle(color: Colors.black54, fontSize: 10),
          ),
        ],
      ),
    );
  }

  Container dashedLine() {
    return Container(
      margin: EdgeInsets.only(left: 1, right: 1, top: 3, bottom: 5),
      width: 30,
      height: 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey.withOpacity(0.4),
      ),
    );
  }

  Container crauselItems(String img) {
    return Container(
      width: 400,
      height: 260,
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Container ViewAll() {
    return Container(
        width: 180,
        height: 40,
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Center(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xFF1fad90),
                    size: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'View all',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ));
  }
}
