import 'package:flutter/material.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({super.key});

  @override
  State<ProgressWidget> createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Progress Page'),
      ],
    );
  }
}
