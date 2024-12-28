import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // We'll create this next
import 'screens/login_screen.dart';  // Start with the Login Screen


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical Waste Classifier',
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        hintColor: Colors.tealAccent,
        buttonTheme: ButtonThemeData(buttonColor: Colors.teal),
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 14.0),
          titleLarge: TextStyle(
              fontSize: 18.0, color: const Color.fromARGB(221, 253, 252, 252)),
        ),
      ),
      home: LoginScreen(),
    );
  }
}
