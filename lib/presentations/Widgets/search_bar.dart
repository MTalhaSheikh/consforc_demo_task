import 'package:flutter/material.dart';

import '../../data/string_constants.dart';

class RoundedSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white60.withOpacity(0.5),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const TextField(
                  cursorColor: Colors.white,
                  // textAlign: TextAlign.center, // Align the text input horizontally in the center
                  style: TextStyle(color: Colors.white), // Set the text color
                  decoration: InputDecoration(
                    hintText: AppConstants.exampleSearchHere,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 12),
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 40,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  color: Colors.deepPurple,
                  icon: Icon(Icons.search, size: 20),
                  onPressed: () {
                    // Perform search operation
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}