import 'package:flutter/material.dart';

class RecoveryAccountPage extends StatefulWidget {
  const RecoveryAccountPage({super.key});

  @override
  State<RecoveryAccountPage> createState() => _RecoveryAccountState();
}

class _RecoveryAccountState extends State<RecoveryAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.key,
      body: const SafeArea(
        bottom: false,
        child: Text('Forgot password page'),
      ),
    );
  }
}
