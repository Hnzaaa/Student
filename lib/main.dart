import 'package:flutter/material.dart'; 
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:student/modules/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student',
      theme: ThemeData( 
        primaryColor: const Color.fromARGB(255, 17, 111, 139) ,
      ),
      home: const LoginPage(title: ''),
    );
  }
}


