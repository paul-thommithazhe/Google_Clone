import 'package:flutter/material.dart';
import 'package:google_clone/core/colors.dart';
import 'package:google_clone/core/constants.dart';
import 'package:google_clone/widgets/search_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width > 298
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SeaarchButton(title: 'Google Search'),
                  kWidthSizedbox10,
                  SeaarchButton(title: 'I\'am feeling Lucky '),
                ],
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SeaarchButton(title: 'Google Search'),
                  SizedBox(height: 10),
                  SeaarchButton(title: 'I\'am feeling Lucky '),
                ],
              )
            ],
          );
  }
}
