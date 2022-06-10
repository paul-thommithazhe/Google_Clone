import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/core/colors.dart';
import 'package:google_clone/core/constants.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
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
        const SizedBox(height: 27),
        Container(
          width: size.width * 0.45,
          decoration: BoxDecoration(
            color: searchColor,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: searchColor),
          ),
          child: TextFormField(
            style: const TextStyle(fontSize: 16),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  constraints: const BoxConstraints(maxHeight: 150),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset('assets/images/mic-icon.svg',
                          height: 20, width: 20),
                      kWidthSizedbox10,
                      SvgPicture.asset('assets/images/search-icon.svg',
                          color: blueColor, height: 20, width: 20),
                      kWidthSizedbox10,
                    ],
                  ),
                ),
              ),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
      ]),
    );
  }
}
