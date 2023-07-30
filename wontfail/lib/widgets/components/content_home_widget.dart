import 'package:flutter/material.dart';

import '../../themes.dart';

class ContentHomeWidget extends StatefulWidget {
  const ContentHomeWidget({super.key});

  @override
  State<ContentHomeWidget> createState() => _ContentHomeWidgetState();
}

class _ContentHomeWidgetState extends State<ContentHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icon/icon_content_home.png',
            height: 50,
            color: Colors.blueAccent,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      child: Text('Header 1'),
                    ),
                    SizedBox(
                      child: Text(
                        '8 min ago',
                        style: greyTextStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                    "He'll want to use your yacht, and I don't\nwant this thing smelling like fish."),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  color: Colors.black,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
