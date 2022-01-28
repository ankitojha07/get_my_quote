import 'package:flutter/material.dart';

import 'QuotePage.dart';

class Splash extends StatefulWidget {

  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _goToQuote();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Get My Quote",
          style: TextStyle(fontSize: 30, color: Colors.deepOrange),)
        ),
      ),

    );

  }

  void _goToQuote() async {
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context)=> QuotePage()));
  }
}
