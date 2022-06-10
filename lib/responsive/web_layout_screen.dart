import 'package:flutter/material.dart';
import 'package:google_clone/core/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/core/constants.dart';
import 'package:google_clone/widgets/search.dart';
import 'package:google_clone/widgets/search_button.dart';
import 'package:google_clone/widgets/search_buttons.dart';
import 'package:google_clone/widgets/translation_buttons.dart';
import 'package:google_clone/widgets/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: null,
            child: const Text(
              'Gmail',
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
            ),
          ),
          TextButton(
            onPressed: null,
            child: const Text(
              'Images',
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: null,
            icon: SvgPicture.asset(
              'images/more-apps.svg',
              color: kWhiteColor,
            ),
          ),
          const SizedBox(width: 10),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0).copyWith(right: 10),
            child: MaterialButton(
              color: Color(0xff1A73EB),
              onPressed: () {},
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: kWhiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: size.height * 0.25,
              ),
              Expanded(
                  child: Column(
                children: const [
                  Search(),
                  kHeightSizedbox20,
                  SearchButtons(),
                  kHeightSizedbox20,
                  TranslationButtons(),
                ],
              )),
              const WebFooter(),
            ]),
      ),
    );
  }
}
