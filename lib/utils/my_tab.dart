import 'package:flutter/material.dart';

class Mytab extends StatelessWidget {
  final String iconPath;
  const Mytab({super.key,required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 30,
      child:Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
      child:Image.asset(iconPath)
    ));
  }
}