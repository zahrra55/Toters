import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:toters/homePage.dart';

class detailPage extends StatefulWidget {
  final String img;
  final String Name;
  final double Rate;
  detailPage({
    required this.img,
    required this.Name,
    required this.Rate,
  });
  @override
  State<detailPage> createState() => _detailPageState();
}

String item = '';
// bool checkValue = true;
// bool c = true;
// bool v = true;
int n = 0;

class _detailPageState extends State<detailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                meal(widget.img, widget.Name, 13, 30, widget.Rate,
                    'We serve most delicious selection of Iragi traditional food.'),
                Row(
                  children: [
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      'Wanna add something?',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
                RadioListTile(
                    value: 'Zahraa',
                    groupValue: item,
                    title: Text('Maio'),
                    onChanged: (val) {
                      setState(() {
                        item = '$val';
                        print('zahraa');
                      });
                    }),
                RadioListTile(
                    value: 'dsqfrh',
                    groupValue: item,
                    title: Text('Catchap'),
                    onChanged: (val) {
                      setState(() {
                        item = '$val';
                        print('Zahra');
                      });
                    }),
                SizedBox(
                  height: 10,
                ),
                // CheckboxListTile(value: checkValue, onChanged: (value) {
                //   setState(() {
                //     checkValue= value!;
                //   });
                // }),
                // CheckboxListTile(value: c, onChanged: (value) {
                //   setState(() {
                //     c= value!;
                //   });
                // }),
                // CheckboxListTile(value: v, onChanged: (value) {
                //   setState(() {
                //     v= value!;
                //   });
                // }),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Popular',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                    items: [
                      crauselItems('images/burgerz.jpg'),
                      crauselItems('images/meat2.jpg'),
                      crauselItems('images/gaas.jpg'),
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
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 20,
                          ),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Icon(
                        Icons.share_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.9),
                      ),
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
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
              icon: Icon(Icons.search_rounded),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                child: Image.asset(
                  'images/photo_2022-08-26_14-53-44.jpg',
                  width: 27,
                  height: 27,
                ),
              ),
              label: 'Butler',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_rounded),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(Icons.person_outline),
            ),
          ]),
    );
  }

  Container meal(String photo, String name, int min, int max, double rate,
      String description) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width + 205,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(photo),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 230,
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
                          print('clicked');
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
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
                        width: 10,
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        height: 30,
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
                                  color: Color(0xFFea6309), fontSize: 12),
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
                            width: 95,
                            height: 30,
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
                                        color: Colors.blue, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '$rate',
                        style: TextStyle(
                            fontSize: 38,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                size: 27,
                                color: Color(0xFF1fad90),
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 27,
                                color: Color(0xFF1fad90),
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 27,
                                color: Color(0xFF1fad90),
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 27,
                                color: Color(0xFF1fad90),
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 27,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ],
                          ),
                          Text(
                            '   Based on costemars ratings',
                            style: TextStyle(fontSize: 9, color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 245,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF1fad90),
                        size: 20,
                      ),
                    ],
                  ),
                  Container(
                    width: 380,
                    height: 1,
                    color: Colors.grey.withOpacity(0.4),
                    margin: EdgeInsets.only(
                        top: 20, bottom: 20, right: 10, left: 15),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Zahraa Ibrahim  ',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Color(0xFF1fad90),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Color(0xFF1fad90),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 18,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '\"Not so bad but...\"',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        'Read more',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF1fad90),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 380,
                    height: 1,
                    color: Colors.grey.withOpacity(0.4),
                    margin: EdgeInsets.only(
                        top: 20, bottom: 20, right: 10, left: 15),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.edit_note,
                        size: 25,
                        color: Color(0xFF1fad90),
                      ),
                      Text(
                        '  Write a review',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF1fad90),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 20,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 20,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 20,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 20,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      Icon(
                        Icons.star_rate_rounded,
                        size: 20,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 10,
                    color: Colors.grey.withOpacity(0.1),
                    margin: EdgeInsets.only(top: 12, bottom: 10),
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

  Container crauselItems(String img) {
    return Container(
      width: 400,
      height: 200,
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
}
