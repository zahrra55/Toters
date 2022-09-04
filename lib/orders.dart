import 'package:flutter/material.dart';
import 'package:toters/Search.dart';
import 'package:toters/butler.dart';
import 'package:toters/homePage.dart';
import 'package:toters/profile.dart';

class orderPage extends StatefulWidget {
  const orderPage({Key? key}) : super(key: key);

  @override
  State<orderPage> createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Past Orders'),
    Tab(text: 'Upcoming'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: myTabs.length,
        child: Scaffold(
          backgroundColor: Color(0xFFf6f6f8),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white30,
            centerTitle: true,
            title: TabBar(
              labelColor: Color(0xFF1fad90),
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xFF1fad90),
              tabs: myTabs,
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text(
                  'You do not have any past orders!',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Image(image: AssetImage('images/upcoming.jpg')),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xFF1fad90),
              items: [
                BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => page1()));
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => butlerPage()));
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
        ));
  }
}
