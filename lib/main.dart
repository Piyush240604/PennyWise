import 'package:flutter/material.dart';
import 'package:pennywise/community_page.dart';
import 'package:pennywise/home_page.dart';
import 'package:pennywise/login_page.dart';
import 'package:pennywise/register_page.dart';
import 'package:pennywise/user_detail_page.dart';
import 'package:pennywise/chatBot_page.dart';
import 'package:pennywise/components/const.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/community': (context) => CommunityPage(),
        '/user': (context) => UserDetailPage(),
        '/chatbot': (context) => ChatBot(),
      },
    );
  }
}
