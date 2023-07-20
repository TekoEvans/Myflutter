// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CoffeeTitle extends StatelessWidget {
 
  final String coffeeImagePath;
  final String coffeePrice;
  final String coffeeName;
    const CoffeeTitle({ required this.coffeeImagePath, required this.coffeeName, required this.coffeePrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // cooffe image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(coffeeImagePath),
            ),

            // coffe Name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              child: Column(
                children: [
                  Text(
                    coffeeName,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'With Almond Milk',
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ],
              ),
            ),

            //price

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$ "+ coffeePrice),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(Icons.add),
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
