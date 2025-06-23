import 'package:flutter/material.dart';
import 'package:testtest/features/AllDoctorsPage/Widgets/allTabs.dart';
import 'package:testtest/features/DoctorDetails/Views/doctors_details_view.dart';
import 'package:testtest/utils/constants.dart';
import 'package:testtest/utils/text_field.dart';

class AllDoctorsView extends StatelessWidget {
  const AllDoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          shadowColor: Colors.white,
          title: Text("All Doctors", style: appBarStyle),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                SizedBox(height: 14),
                SearchInputField(),
                SizedBox(height: 24),
                SizedBox(height: 40, child: AllTabsWidget()),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      SearchResultsBar(),
                      SizedBox(height: 8),
                      ListView.builder(
                        itemBuilder:
                            (context, index) => SearchResultDoctorCard(),
                        itemCount: 10,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchResultsBar extends StatelessWidget {
  const SearchResultsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "532 Found",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kboldTitle,
            fontSize: 16,
          ),
        ),
        Text(
          "Default",
          style: TextStyle(color: knormalTitle, fontSize: knormalTextSize),
        ),
      ],
    );
  }
}

class SearchResultDoctorCard extends StatelessWidget {
  const SearchResultDoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () => Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => DoctorsDetailsView())),
      child: SizedBox(
        height: 133,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Card(
              elevation: 10.0,
              shadowColor: Colors.grey.shade100,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8.0,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/doctor2.png'),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dr.David Patel",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kboldTitle,
                                fontSize: kLargeTextSize,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_outline),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Cardiologist",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: kLargeTextSize,
                                  color: knormalText,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Cardiology Center, USA"),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    Text(
                                      "4.7",
                                      style: TextStyle(color: knormalText),
                                    ),
                                  ],
                                ),
                                Divider(color: Colors.black),
                                SizedBox(width: 5),
                                Text(
                                  "1,872 Review",
                                  style: TextStyle(color: knormalText),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
