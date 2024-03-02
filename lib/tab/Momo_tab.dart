import 'package:bmi/utils/momo.dart';
import 'package:flutter/material.dart';

class momotab extends StatelessWidget {

  List Momo = [
    ['Chicken Momo','160',Colors.blue,'lib/images/buff.png'],
    ['Veg Momo','100',Colors.blue,'lib/images/veg.png'],
    ['Chilly Momo','220',Colors.blue,'lib/images/buff.png'],
    ['Buff Momo','140',Colors.blue,'lib/images/buff.png'],

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: 
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemBuilder: (context, index)
    {
      return momoTile(
        momoType: Momo[index][0],
         Price: Momo[index][1],
         momoColor: Momo[50]
      );
    
  });
  }
}