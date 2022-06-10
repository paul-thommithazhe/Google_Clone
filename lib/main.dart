import 'package:flutter/material.dart';
import 'package:google_clone/core/colors.dart';
import 'package:google_clone/responsive/mobile_layout_screen.dart';
import 'package:google_clone/responsive/responsive_layout_screen.dart';
import 'package:google_clone/responsive/web_layout_screen.dart';
import 'package:google_clone/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      title: 'Google Clone',
      home: SearchScreen(),
      // home: ResponsiveLayoutScreen(
      //   mobileScreenLayout: const MobileScreenLayout(),
      //   webeScreenLayout: const WebScreenLayout(),
      // ),
    );
  }
}
