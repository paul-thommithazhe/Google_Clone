import 'package:flutter/material.dart';
import 'package:google_clone/core/colors.dart';

class SeaarchButton extends StatelessWidget {
  final String title;

  const SeaarchButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: searchColor,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      elevation: 0,
      onPressed: () {},
      child: Text(title),
    );
  }
}
