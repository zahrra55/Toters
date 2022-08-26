import 'package:flutter/material.dart';
import 'package:toters/Details.dart';
import 'package:toters/homePage.dart';
import 'package:toters/splash.dart';

void main() {
  runApp(MaterialApp(home: splash(),debugShowCheckedModeBanner: false,));
}
class toters extends StatefulWidget {
  const toters({Key? key}) : super(key: key);

  @override
  State<toters> createState() => _totersState();
}

class _totersState extends State<toters> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
