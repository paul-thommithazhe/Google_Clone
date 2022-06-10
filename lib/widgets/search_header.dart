import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 28,
            right: 15,
            top: 4,
          ),
          child: Image.asset(
            'assets/images/google-logo.png',
            height: 30,
            width: 92,
          ),
        ),
        const SizedBox(
          height: 27,
        ),
      ]),
    );
  }
}
