import 'package:flutter/material.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  ResponsiveLayoutScreen(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webeScreenLayout})
      : super(key: key);
  final Widget mobileScreenLayout;
  final Widget webeScreenLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints);
        if (constraints.maxWidth <= 768) {
          return mobileScreenLayout;
        }
        return webeScreenLayout;
      },
    );
  }
}
