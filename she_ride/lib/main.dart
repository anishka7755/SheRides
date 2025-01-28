import 'package:flutter/material.dart';
import 'package:she_ride/views/login_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    final textTheme= Theme.of(context).textTheme;
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 150, 58, 183)),
      ),
      home: const LoginScreen(),
    );
  }
}

