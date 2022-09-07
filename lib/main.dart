import 'package:flutter/material.dart';
import 'package:hmp_new/splash_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // var cookies = await controller.runJavascriptReturningResult('document.cookie',);
          // print('\x1B[33m$cookies\x1B[0m');
          if (await controller.canGoBack()){
            controller.goBack();
          }
        },
        backgroundColor: Color(0xFF2E3F71),
        child: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: SafeArea(
        child: WebView(
          debuggingEnabled: false,
          initialUrl: 'https://heathmatthewsphysio.in/users/sign_in',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController c) {
            this.controller=c;
          },
        ),
      ),
    );
  }
}