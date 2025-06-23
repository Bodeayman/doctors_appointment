import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testtest/features/CreateAccountPage/create_account_view.dart';
import 'package:testtest/features/HomePage/Views/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateAccountView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
