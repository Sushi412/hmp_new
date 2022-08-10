import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          padding: EdgeInsets.only(top: 78.h,bottom: 78.h,left: 78.w,right: 78.w),
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