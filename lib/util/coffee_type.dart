import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeTytpee;
  final bool isSelect;
  final VoidCallback onTap;

  CoffeeType({required this.coffeeTytpee, 
  required this.isSelect,
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 25.0),
        child: Text(
          coffeeTytpee,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelect ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
