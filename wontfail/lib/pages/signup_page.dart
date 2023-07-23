import "package:flutter/material.dart";
import 'package:wontfail/pages/recovery_acc_page.dart';
import "package:wontfail/themes.dart";

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SafeArea(
          bottom: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Stack(
                    children: [
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/icon/out.png',
                            height: 30,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Sign Up',
                          style: titleTextStyle,
                        ),
                      ),
                    ],
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
                            hintText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            } else {
                              return null;
                            }
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
                                print('isObscure = $_isObscure');
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 6),
                                child: Text(
                                  'Show',
                                  style: buttonTextTextStyle,
                                ),
                              ),
                            ),
                          ),
                          obscureText: _isObscure,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some password';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Checkbox(
                              value: _isChecked,
                              onChanged: (value) {
                                setState(() {
                                  _isChecked = !_isChecked;
                                  print('isChecked value $_isChecked');
                                });
                              },
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Text(
                                'I would like to receive your newsletter and other promotional information.',
                                style: commonTextStyle,
                                softWrap: true,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 43,
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
                              'Sign Up',
                              style: buttonTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
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
              ),
            ),
          )),
    );
  }
}
