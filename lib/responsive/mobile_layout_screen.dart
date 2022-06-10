import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/core/colors.dart';
import 'package:google_clone/core/constants.dart';
import 'package:google_clone/widgets/mobile_footer.dart';
import 'package:google_clone/widgets/search.dart';
import 'package:google_clone/widgets/search_buttons.dart';
import 'package:google_clone/widgets/translation_buttons.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        title: SizedBox(
          width: size.width > 768 ? size.width * 0.34 : size.width * 0.8,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 1),
                labelStyle: TextStyle(fontSize: 13),
                labelColor: blueColor,
                unselectedLabelColor: Colors.grey,
                indicatorColor: blueColor,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(text: 'ALL'),
                  Tab(text: 'IMAGES'),
                ]),
          ),
        ),
        actions: [
          const SizedBox(width: 10),
          IconButton(
            onPressed: null,
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: kWhiteColor,
            ),
          ),
          const SizedBox(width: 5),
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
              MobileFooter()
            ]),
      ),
    );
  }
}
