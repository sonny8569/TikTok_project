import 'package:flutter/material.dart';
import 'package:tiktok_project/constants/gaps.dart';
import 'package:tiktok_project/constants/sizes.dart';
import 'package:tiktok_project/features/authentication/sign_up_screen.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFFE9435A),
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size20 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const SignUpScreen() ,
    );
  }
}

