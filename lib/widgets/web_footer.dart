import 'package:flutter/material.dart';
import 'package:google_clone/core/colors.dart';
import 'package:google_clone/core/constants.dart';
import 'package:google_clone/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: footerColor,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  FooterText(title: 'About'),
                  kWidthSizedbox10,
                  FooterText(title: 'Advertising'),
                  kWidthSizedbox10,
                  FooterText(title: 'Business'),
                  kWidthSizedbox10,
                  FooterText(title: 'How Searh Works'),
                ],
              ),
              Row(
                children: const [
                  FooterText(title: 'Privacy'),
                  kWidthSizedbox10,
                  FooterText(title: 'Terms'),
                  kWidthSizedbox10,
                  FooterText(title: 'Settings'),
                  kWidthSizedbox10,
                ],
              )
            ],
          ),
        ));
  }
}
