// import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:hmp_new/splash_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Splash(),
      );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, }) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async {
        if (await controller.canGoBack()){
          controller.goBack();
          return false;
        }
        else {
          return true;
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: WebView(
            initialUrl: 'https://heathmatthewsphysio.in/users/sign_in',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController c) {
              this.controller=c;
            },
          ),
        ),
      ),
    );
  }
}