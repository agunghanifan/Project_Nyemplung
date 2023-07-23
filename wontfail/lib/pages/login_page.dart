import "package:flutter/material.dart";
import 'package:wontfail/pages/recovery_acc_page.dart';
import "package:wontfail/pages/signup_page.dart";
import "package:wontfail/themes.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
            bottom: false,
            child: Padding(
              padding: EdgeInsets.only(top: 32, left: edge, right: edge),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Log In',
                      style: titleTextStyle,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
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
                                  )),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                suffixIcon: TextButton(
                                  onPressed: () {
                                    print('trigger show');
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16, horizontal: 16),
                                      child: Text(
                                        'Show',
                                        style: buttonTextTextStyle.copyWith(
                                            fontWeight: FontWeight.w500),
                                      )),
                                ),
                              ),
                              obscureText: _isObscure,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the Password';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 167,
                            ),
                            SizedBox(
                              height: 51,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                onPressed: () {
                                  print('Trigger!');
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Processing Data'),
                                      ),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: greenColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                child: Text(
                                  'Log In',
                                  style: buttonTextStyle,
                                ),
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) => FractionallySizedBox(
                                      heightFactor: 0.95,
                                      child: SignUpPage(
                                        key: widget.key,
                                      ),
                                    ));
                            print('Trigger Forgot password');
                          },
                          child: Text(
                            'Sign Up',
                            style: buttonTextTextStyle,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RecoveryAccountPage(
                                  key: widget.key,
                                ),
                              ),
                            );
                            print('Trigger Forgot password');
                          },
                          child: Text(
                            'Forgot your Password?',
                            style: buttonTextTextStyle,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )));
  }
}
