import 'package:flutter/material.dart';

import '../widgets/notificationCard.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    label: Text("")),
                Image.asset(
                  "assets/images/profile.png",
                  height: 44,
                  width: 44,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Notification",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15,
            ),
            NotificationCard(),
            NotificationCard(),
            NotificationCard(),
           
          ],
        ),
      ),
    ));
  }
}
