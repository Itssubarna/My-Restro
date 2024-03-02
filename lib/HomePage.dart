import 'package:bmi/tab/Bread_tab.dart';
import 'package:bmi/tab/Momo_tab.dart';
import 'package:bmi/tab/Pizza_tab.dart';
import 'package:bmi/tab/biryani_tab.dart';
import 'package:bmi/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

List <Widget> myTabs = [
  Mytab(
    iconPath: "lib/Icons/momoicon.png",
  ),
  Mytab(
    iconPath: "lib/Icons/breadicon.png",
  ),
  Mytab(
    iconPath: "lib/Icons/biryaniicon.png",
  ),
   const Mytab(
    iconPath: "lib/Icons/pizzaicon.png",
   )
];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
                size: 36,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Column(children: [
          Padding(padding: const EdgeInsets.all(24),
          child: Row(children: 
          [
            Text(
              'Lets Order',
              style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold),
            ),
          ],)),
          TabBar(tabs: myTabs),

          Expanded(
            child: TabBarView(
              children: [
                momotab(),
                breadtab(),
                biryanitab(),
                pizzatab(),
              ],))
        ],)
      ),
    );
  }
}
 