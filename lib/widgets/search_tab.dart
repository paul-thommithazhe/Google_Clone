import 'package:flutter/material.dart';
import 'package:google_clone/core/colors.dart';

class SearchTab extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final String text;
  const SearchTab(
      {Key? key, required this.icon, required this.text, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 18,
              color: isActive ? blueColor : Colors.grey,
            ),
            const SizedBox(width: 3),
            Text(
              text,
              style: TextStyle(
                  fontSize: 15, color: isActive ? blueColor : Colors.grey),
            ),
            
          ],
        ),
        const SizedBox(height: 7),
        isActive? Container(height: 3, width: 40, color: blueColor) : SizedBox()
      ],
    );
  }
}
