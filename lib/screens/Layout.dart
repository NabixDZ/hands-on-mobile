import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../myProvider.dart';
import 'events.dart';
import 'feed.dart';
import 'home_screen.dart';
import 'reportPage.dart';
import 'roadMap.dart';

class LayoutScreen extends StatefulWidget {
  LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List screens = [
    HomeScreen(),
    ReportPage(),
    EventPage(),
    Feed(),
    RoadMapPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[context.read<MyProvider>().index],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 255, 42, 0),
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: Container(
          height: 70,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    context.read<MyProvider>().changeIndex(0);
                  });
                },
                child: SvgPicture.asset(
                  "assets/images/home.svg",
                  height: 35,
                  width: 35,
                  color: context.read<MyProvider>().index == 0
                      ? Color.fromARGB(255, 255, 42, 0)
                      : Colors.black,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      context.read<MyProvider>().changeIndex(1);
                    });
                  },
                  child: SvgPicture.asset(
                    "assets/images/warning.svg",
                    height: 35,
                    width: 35,
                    color: context.read<MyProvider>().index == 1
                        ? Color.fromARGB(255, 255, 42, 0)
                        : Colors.black,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      context.read<MyProvider>().changeIndex(2);
                    });
                  },
                  child: SvgPicture.asset(
                    "assets/images/calendarsearch.svg",
                    height: 35,
                    width: 35,
                    color: context.read<MyProvider>().index == 2
                        ? Color.fromARGB(255, 255, 42, 0)
                        : Colors.black,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      context.read<MyProvider>().changeIndex(3);
                    });
                  },
                  child: SvgPicture.asset(
                    "assets/images/element4.svg",
                    height: 35,
                    width: 35,
                    color: context.read<MyProvider>().index == 3
                        ? Color.fromARGB(255, 255, 42, 0)
                        : Colors.black,
                  )),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      context.read<MyProvider>().changeIndex(4);
                    });
                  },
                  child: SvgPicture.asset(
                    "assets/images/map1.svg",
                    height: 35,
                    width: 35,
                    color: context.read<MyProvider>().index == 4
                        ? Color.fromARGB(255, 255, 42, 0)
                        : Colors.black,
                  )),
            ],
          ),
        ));
  }
}
