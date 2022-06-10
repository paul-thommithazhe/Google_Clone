import 'package:flutter/material.dart';
import 'package:google_clone/core/colors.dart';
import 'package:google_clone/services/api_services.dart';
import 'package:google_clone/widgets/search_footer.dart';
import 'package:google_clone/widgets/search_header.dart';
import 'package:google_clone/widgets/search_result_component.dart';
import 'package:google_clone/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //web header
          SearchHeader(),
          //tabs for new images
          const Padding(
            padding: EdgeInsets.only(left: 150.0),
            child: SearchTabs(),
          ),
          Divider(
            height: 0,
            thickness: 0.3,
          ),
          //search results

          FutureBuilder(
              future: ApiService().fetchData(queryTerm: 'Thushad'),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 150, top: 12),
                        child: Text(
                          'About ${snapshot.data?['searchInformation']['formattedTotalResults']}results (${snapshot.data?['searchInformation']['formattedSearchTime']}seconds)',
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color(0xFF70757a),
                          ),
                        ),
                      ),
                      ListView.builder(itemBuilder:  (context,index){
                        return Padding(padding: const EdgeInsets.only(left: 150,top: 10), child: SearchResultComponent(indextext: ,),)
                      })
                    ],
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),

          //pagination buttons

          SizedBox(
            width: double.infinity,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '< Prev ',
                      style: TextStyle(fontSize: 15, color: blueColor),
                    ),
                  ),
                  const SizedBox(width: 30),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      ' Next >',
                      style: TextStyle(fontSize: 15, color: blueColor),
                    ),
                  ),
                ]),
          ),
          const SizedBox(width: 30),
          const SearchFooter(),
        ],
      )),
    );
  }
}
