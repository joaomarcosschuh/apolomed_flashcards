import 'package:flutter/material.dart';
import 'package:apolomed_flashcards/pages/home_page.dart';
import 'package:apolomed_flashcards/pages/login_page.dart';
import 'package:apolomed_flashcards/pages/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ApoloMed Flashcards',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}
