import "package:flutter/material.dart";
import "package:wontfail/themes.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide:
                                          BorderSide(color: blackColor))),
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
                                      borderSide:
                                          BorderSide(color: blackColor))),
                              obscureText: true,
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
                                            content: Text('Processing Data')));
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: greenColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100))),
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
                    TextButton(
                        onPressed: () {
                          print('Trigger Forgot password');
                        },
                        child: Text(
                          'Forgot your password?',
                          style: buttonTextTextStyle,
                        ))
                  ],
                ),
              ),
            )));
  }
}
