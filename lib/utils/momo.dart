import 'package:flutter/material.dart';

class  momoTile extends StatelessWidget {

  final String momoType;
  final String Price;
  final momoColor;
  const momoTile ({super.key,
  required this.Price,
  required this.momoType, this.momoColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( 
        color: momoColor[50],
      ),
    );
  }
}