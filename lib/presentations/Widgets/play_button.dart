import 'package:flutter/material.dart';
Widget playButton({onTap}){
  return  InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(30)
      ),
      child: const SizedBox(
        height:40,
        width: 40,
        child: Icon(
          Icons.play_arrow,
          size: 30.0,
          color: Colors.white,
        ),
      ),
    ),
  );
}