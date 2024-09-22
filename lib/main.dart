import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MariBerhitungApp());
}

class MariBerhitungApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MariBerhitung',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.pink[50],
      ),
      home: LoginPage(),
    );
  }
}
