import 'package:flutter/material.dart';
import 'package:hmp_new/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateTologin();
  }

  _navigateTologin() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(178, 25, 54, 105),
                  Colors.white,
                  Color(0xFFEDC152)
                ])),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/HMP LOGO.png"),
            ],
    ),
        )
    );
  }
}