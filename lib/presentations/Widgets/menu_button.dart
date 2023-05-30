import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 50,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.5),
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(0),
        ),
        child: const Center(child: FaIcon(FontAwesomeIcons.xbox)),

      ),
    );;
  }
}
