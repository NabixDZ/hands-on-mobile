// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class P1View extends StatelessWidget {
  const P1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                "skip",
                style: TextStyle(
                    color: Color.fromARGB(255, 180, 180, 180), fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/p1.png"),
          ),
        ),
        Container(
          height: 120,
          child: Column(
            children: [
              Text(
                "Create a better",
                style: TextStyle(fontSize: 42),
              ),
              Text("future",
                  style: TextStyle(
                      fontSize: 42, color: Color.fromARGB(255, 255, 42, 0))),
            ],
          ),
        ),
        Container(
          height: 70,
            width: 250,
            child: Expanded(
                child: Text(
                    textAlign: TextAlign.center,
                    "Découvrez des endroits recommandés par d’autre voyageur, et explorez la beauté de votre paye."))),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 5,
              backgroundColor: Color.fromARGB(255, 255, 42, 0),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Color.fromARGB(255, 180, 180, 180),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Color.fromARGB(255, 180, 180, 180),
            ),
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Color.fromARGB(255, 180, 180, 180),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(220, 40),
                backgroundColor: Color.fromARGB(255, 255, 42, 0)),
            onPressed: () {},
            child: Text("Suivant")),
      ]),
    );
  }
}
