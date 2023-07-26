import 'package:flutter/material.dart';
import 'package:wontfail/themes.dart';

class RecoveryAccountPage extends StatefulWidget {
  const RecoveryAccountPage({super.key});

  @override
  State<RecoveryAccountPage> createState() => _RecoveryAccountState();
}

class _RecoveryAccountState extends State<RecoveryAccountPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.key,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: edge),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Forgot Password?',
                  style: titleTextStyle,
                ),
                const SizedBox(height: 32),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
