import 'package:flutter/material.dart';
import 'package:iwd23/widgets/recentEvent.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        RecentEvent(),
        RecentEvent(),
      ]),
    ));
  }
}
