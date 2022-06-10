import 'package:flutter/material.dart';
import 'package:google_clone/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          SearchTab(
            icon: Icons.search,
            isActive: true,
            text: 'All',
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.shop,
            isActive: false,
            text: 'Shopping',
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.video_call,
            isActive: false,
            text: 'Videos',
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.image,
            isActive: false,
            text: 'Images',
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.article,
            isActive: false,
            text: 'News',
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.search,
            isActive: false,
            text: 'News',
          ),
          SizedBox(width: 20),
          SearchTab(
            icon: Icons.more_vert,
            isActive: false,
            text: 'More',
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
