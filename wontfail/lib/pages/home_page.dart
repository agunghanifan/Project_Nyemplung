import 'package:flutter/material.dart';
import 'package:wontfail/themes.dart';

import '../widgets/content_home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: edge),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'My Journal',
                  style: titleTextStyle,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return InkWell(
                                  onTap: () {
                                    print('enter contentHomeWidget!');
                                  },
                                  child: Column(
                                    children: [
                                      const ContentHomeWidget(),
                                      index == 9
                                          ? const SizedBox(
                                              height: 70,
                                            )
                                          : const SizedBox()
                                    ],
                                  ));
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: FloatingActionButton(
                        onPressed: () {
                          print('button floating');
                        },
                        child: const Text('TEST'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon/icon_bottombar.png',
                height: 32,
              ),
              label: 'Journal'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon/icon_bottombar.png',
                height: 32,
              ),
              label: 'Progress'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon/icon_bottombar.png',
                height: 32,
              ),
              label: 'Settings'),
        ],
      ),
    );
  }
}
