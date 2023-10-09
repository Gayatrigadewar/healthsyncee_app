import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HealthSynee App',
      theme: ThemeData(
        primaryColor: Color(0xFF9EB384),
      ),
      home: LoginScreen(),
    );
  }
}
