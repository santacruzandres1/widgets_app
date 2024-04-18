import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/widgets/progress/progress_view.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
        ),
        body: const ProgressView(),
    );
  }
}
