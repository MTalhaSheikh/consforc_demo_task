import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle titleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );


  static const TextStyle userNameStyle = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold

  );
  static const TextStyle userNormalText = TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.normal

  );
  static const TextStyle onSale = TextStyle(
      color: Color(0xff6040BB),
      fontSize: 12,
      fontWeight: FontWeight.w700

  );
  static const TextStyle viewAll = TextStyle(
      color: Colors.grey,
      fontSize: 12,
      fontWeight: FontWeight.w300

  );
  static const TextStyle courseName = TextStyle(
      color: Color(0xff6040BB),
      fontSize: 14,
      fontWeight: FontWeight.w700

  );
  static const TextStyle coursePrice = TextStyle(
      decoration: TextDecoration.lineThrough,
      color: Color(0xff6040BB),
      fontSize: 14,
      fontWeight: FontWeight.w400

  );
  static const TextStyle coursePriceNew = TextStyle(
      // decoration: TextDecoration.lineThrough,
      color: Color(0xff6040BB),
      fontSize: 14,
      fontWeight: FontWeight.w400

  );
  static const TextStyle cardButtons = TextStyle(
      // decoration: TextDecoration.lineThrough,
      color: Color(0xff6040BB),
      fontSize: 12,
      fontWeight: FontWeight.w400

  );  static const TextStyle cardButtonsNumber = TextStyle(
      // decoration: TextDecoration.lineThrough,
      color: Color(0xff6040BB),
      fontSize: 12,
      fontWeight: FontWeight.w600

  );

// Add more custom text styles as needed
}
