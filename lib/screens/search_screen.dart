import 'package:flutter/material.dart';
import 'package:google_clone/widgets/search_header.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          //web header
          SearchHeader(),
          //tabs for new images

          //search results

          //pagination buttons
        ],
      )),
    );
  }
}
