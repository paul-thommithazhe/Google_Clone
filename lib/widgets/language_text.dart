import 'package:flutter/material.dart';
import 'package:google_clone/core/colors.dart';

class LanguageText extends StatelessWidget {
  final String title;
  const LanguageText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Text(
        title,
        style: TextStyle(color: blueColor),
      ),
    );
  }
}
