import 'package:flutter/material.dart';

class AppTutorialScreen extends StatelessWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Tuttorial'),
      ),
      body:  _appTutorialView(),
    );
  }
}

class _appTutorialView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}