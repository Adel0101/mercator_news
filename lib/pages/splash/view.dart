import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mercator_news_app/utils/router/paths.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // timer to simulate a loading screen
    Timer(const Duration(seconds: 3),
        () => Navigator.popAndPushNamed(context, Routes.articles));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
