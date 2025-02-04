import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/second_page.dart';
import 'package:wallpaper/wallpaper_homepage.dart';

void main() {
  runApp(Ourapp());
}

class Ourapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Wallpaper_homepage(),
        "/categories": (_) => Categories()
      },
    );
  }
}
