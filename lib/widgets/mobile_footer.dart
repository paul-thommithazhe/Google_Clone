import 'package:flutter/material.dart';
import 'package:google_clone/core/constants.dart';
import 'package:google_clone/widgets/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: const [
        Divider(thickness: 0.19, color: Colors.grey),
        FooterText(title: 'About'),
        kWidthSizedbox10,
        FooterText(title: 'Advertising'),
        kWidthSizedbox10,
        FooterText(title: 'Business'),
        kWidthSizedbox10,
        FooterText(title: 'How Searh Works'),
        kWidthSizedbox10,
        FooterText(title: 'Privacy'),
        kWidthSizedbox10,
        FooterText(title: 'Terms'),
        kWidthSizedbox10,
        FooterText(title: 'Settings'),
        kWidthSizedbox10,
      ],
    );
  }
}
