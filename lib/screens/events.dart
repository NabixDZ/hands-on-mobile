import 'package:flutter/material.dart';

import '../widgets/recentEvent.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Scaffold(
          body: ListView(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Recently added:",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecentEvent(),
                RecentEvent(),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Check more...',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
          ),
          SizedBox(height: 10),
         
        ]),
      ])),
    );
  }
}
