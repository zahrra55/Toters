import 'package:flutter/material.dart';
import 'package:toters/homePage.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>page1()));
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/splash.jpg'),
                fit: BoxFit.cover,
              )
          ),
        )
    );
  }
}
