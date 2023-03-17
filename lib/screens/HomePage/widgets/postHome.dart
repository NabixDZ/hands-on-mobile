// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PostHome extends StatelessWidget {
  PostHome(
      {super.key,
      required this.title,
      required this.user_name,
      required this.url});
  final String title, user_name, url;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
       
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                url,fit: BoxFit.fitHeight,
                height: 170,
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    user_name,
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 143, 138, 135)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostHome2 extends StatelessWidget {
  PostHome2(
      {super.key,
      required this.title,
      required this.user_name,
      required this.url});
  final String title, user_name, url;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              url,fit: BoxFit.fitHeight,
                height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  user_name,
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 143, 138, 135)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
