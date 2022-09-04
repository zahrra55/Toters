import 'package:flutter/material.dart';
import 'package:toters/Search.dart';
import 'package:toters/butler.dart';
import 'package:toters/homePage.dart';
import 'package:toters/orders.dart';

class searcher extends StatefulWidget {
  const searcher({Key? key}) : super(key: key);

  @override
  State<searcher> createState() => _searcherState();
}

class _searcherState extends State<searcher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Zahraa',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                padding: EdgeInsets.only(top: 5, left: 5, right: 5),
                width: 160,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 0.1,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.card_giftcard,
                          color: Color(0xFF1fad90),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'Green',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            Text(
                              '0 pts',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 17,
                      color: Color(0xFF1fad90),
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  padding: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width - 20,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 0.1,
                          color: Colors.grey.withOpacity(0.4),
                        )
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SettingTypes(
                          Icon(
                            Icons.manage_accounts_outlined,
                            color: Colors.grey,
                            size: 30,
                          ),
                          'Profile'),
                      SettingTypes(
                          Icon(
                            Icons.headset_mic_outlined,
                            color: Colors.grey,
                            size: 30,
                          ),
                          'Support'),
                      SettingTypes(
                          Icon(
                            Icons.credit_card,
                            color: Colors.grey,
                            size: 30,
                          ),
                          'Payment'),
                      SettingTypes(
                          Icon(
                            Icons.language,
                            color: Colors.grey,
                            size: 30,
                          ),
                          'language'),
                    ],
                  ),
                ),
              ),
              sets(
                Icon(
                  Icons.wallet,
                  color: Colors.grey,
                  size: 25,
                ),
                'wallet',
                Icon(
                  Icons.add,
                  color: Colors.grey,
                  size: 30,
                ),
                'Add Funds',
                Icon(
                  Icons.call_made_outlined,
                  color: Colors.grey,
                  size: 25,
                ),
                'Send Funds',
              ),
              set2(
                Icon(
                  Icons.percent,
                  color: Colors.grey,
                  size: 25,
                ),
                'Credit',
                Icon(
                  Icons.add_card,
                  color: Colors.grey,
                  size: 24,
                ),
                'Add promo code',
              ),
              set3(
                Icon(
                  Icons.notifications_outlined,
                  color: Colors.grey,
                  size: 25,
                ),
                'Notifications',
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                  size: 24,
                ),
                'Addresses',
                Icon(
                  Icons.favorite_border_sharp,
                  color: Colors.grey,
                  size: 25,
                ),
                'Favorite',
                Icon(
                  Icons.room_preferences_outlined,
                  color: Colors.grey,
                  size: 24,
                ),
                'Preferences',
                Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Colors.grey,
                  size: 24,
                ),
                'Refer a friend',
              ),
              set4(
                Icon(
                  Icons.headset_mic_outlined,
                  color: Colors.grey,
                  size: 25,
                ),
                'Get support',
                Icon(
                  Icons.chat_outlined,
                  color: Colors.grey,
                  size: 24,
                ),
                'support Tickets',
                Icon(
                  Icons.format_paint_outlined,
                  color: Colors.grey,
                  size: 25,
                ),
                'Legal',
                Icon(
                  Icons.contact_support_outlined,
                  color: Colors.grey,
                  size: 24,
                ),
                'FAQ',
              ),
              Center(
                child: Container(
                  margin:
                      EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  width: MediaQuery.of(context).size.width - 20,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          spreadRadius: 0.1,
                          color: Colors.grey.withOpacity(0.4),
                        )
                      ]),
                  child: Row(
                    children: [
                      Icon(
                        Icons.output_sharp,
                        color: Colors.red,
                        size: 23,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sign Out',
                        style: TextStyle(color: Colors.red, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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

  Container sections(Icon i, String name) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 20, bottom: 40, left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/shopping.jpg'),
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
              Text(
                'data',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('datdatadatadataa'),
              Text('datdatadatadataa'),
              Text(
                'data',
                style: TextStyle(color: Colors.green),
              ),
            ],
          )
        ],
      ),
    );
  }

  Column SettingTypes(Icon icon, String title) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Center(
            child: icon,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Container line() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      width: MediaQuery.of(context).size.width - 60,
      height: 1,
      color: Colors.grey.withOpacity(0.3),
    );
  }

  Row set(Icon icon, String title) {
    return Row(
      children: [
        icon,
        SizedBox(
          width: 10,
        ),
        Text(title),
      ],
    );
  }

  Row maintitle(Icon icon, String title) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        SizedBox(
          width: 10,
        ),
        icon,
      ],
    );
  }

  Container sets(
    Icon i1,
    String t1,
    Icon i2,
    String t2,
    Icon i3,
    String t3,
  ) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      padding: EdgeInsets.only(top: 10, left: 10),
      width: MediaQuery.of(context).size.width - 20,
      height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 0.1,
              color: Colors.grey.withOpacity(0.4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Toters cash',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.info_outline,
                color: Color(0xFF1fad90),
                size: 20,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          set(i1, t1),
          line(),
          set(i2, t2),
          line(),
          set(i3, t3),
        ],
      ),
    );
  }

  Container set2(
    Icon i1,
    String t1,
    Icon i2,
    String t2,
  ) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      padding: EdgeInsets.only(top: 10, left: 10, right: 14),
      width: MediaQuery.of(context).size.width - 20,
      height: 130,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 0.1,
              color: Colors.grey.withOpacity(0.4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Toters cash',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              set(i1, t1),
              Text(
                'IDQ 0',
                style: TextStyle(
                  color: Color(0xFF1fad90),
                ),
              )
            ],
          ),
          line(),
          set(i2, t2),
        ],
      ),
    );
  }

  Container set3(
    Icon i1,
    String t1,
    Icon i2,
    String t2,
    Icon i3,
    String t3,
    Icon i4,
    String t4,
    Icon i5,
    String t5,
  ) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      padding: EdgeInsets.only(top: 10, left: 10, right: 14),
      width: MediaQuery.of(context).size.width - 20,
      height: 273,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 0.1,
              color: Colors.grey.withOpacity(0.4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Account details',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          set(i1, t1),
          line(),
          set(i2, t2),
          line(),
          set(i3, t3),
          line(),
          set(i4, t4),
          line(),
          set(i5, t5),
        ],
      ),
    );
  }

  Container set4(
    Icon i1,
    String t1,
    Icon i2,
    String t2,
    Icon i3,
    String t3,
    Icon i4,
    String t4,
  ) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      padding: EdgeInsets.only(top: 10, left: 10, right: 14),
      width: MediaQuery.of(context).size.width - 20,
      height: 225,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 0.1,
              color: Colors.grey.withOpacity(0.4),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Account details',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          set(i1, t1),
          line(),
          set(i2, t2),
          line(),
          set(i3, t3),
          line(),
          set(i4, t4),
        ],
      ),
    );
  }
}
