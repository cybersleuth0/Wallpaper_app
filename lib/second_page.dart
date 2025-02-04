import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _categories_state();
}

class _categories_state extends State<Categories> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        "${count}",
        style: TextStyle(fontSize: 50),
      )),
    );
  }
}
