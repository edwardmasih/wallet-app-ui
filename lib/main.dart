import 'package:flutter/material.dart';
import 'package:wallet_app/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Circular'),
    );
  }
}
