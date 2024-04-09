import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login');
    });

    return Scaffold(
      backgroundColor: const Color(0xffeeb365),
      body: Align(
        alignment: Alignment.center,
        child: Image.asset('images/logo.png', height: 230, width: 230),
      ),
    );
  }
}
