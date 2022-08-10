import 'package:flutter/material.dart';
import 'package:hmp_new/splash_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()
{runApp(const MyApp());}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.4,866),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: const Splash(),
    );
    // return const MaterialApp(
    //   debugShowCheckedModeBanner:false,
    //   home: Splash(),
    // );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://heathmatthewsphysio.in/',
          onWebViewCreated: (controller)
          {
            this.controller = controller;
          },
          onPageStarted: (url)
          {
            print('New Website: $url');
          },
        ),
      ),
    );
  }
}
