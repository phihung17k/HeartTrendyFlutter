import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Heart",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const HomePage(),
  ));
}
