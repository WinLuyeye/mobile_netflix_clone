import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/pages/home_page.dart';
import 'package:netflix_clone/pages/onboarding_page.dart';

class MyLoadingPage extends StatefulWidget {
  const MyLoadingPage({super.key, required this.title});
  final String title;

  @override
  State<MyLoadingPage> createState() => _MyLoadingPageState();
}

class _MyLoadingPageState extends State<MyLoadingPage> {
  @override
  void initState() {
    super.initState();
    loadAnimation(context);
  }

  Timer loadAnimation(BuildContext context) {
    return Timer(
      const Duration(milliseconds: 2850), // 2.8 secondes
      () => onLoad(context),
    );
  }

  void onLoad(BuildContext context) {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: const Duration(
          milliseconds: 500,
        ), // Durée de l'animation
        pageBuilder:
            (context, animation, secondaryAnimation) => OnboardingPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset("assets/lotties/netflix.json", repeat: false),
      ),
    );
  }
}
