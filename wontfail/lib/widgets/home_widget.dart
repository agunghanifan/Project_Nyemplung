import 'package:flutter/material.dart';

import '../themes.dart';
import 'components/content_home_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
