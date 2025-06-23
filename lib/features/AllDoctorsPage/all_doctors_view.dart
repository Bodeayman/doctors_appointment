import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
              elevation: 3.0,
              shadowColor: Colors.grey.shade100,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6.0,
                  vertical: 4.0,
                ),
                child: Row(
                  children: [
                    Image.asset('assets/doctor2.png'),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dr.David Patel", style: doctorCardStyle),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4.0,
                              ),
                              child: Container(
                                height: 1,
                                width:
                                    197, // 👈 this makes it stretch horizontally
                                color: knormalText,
                              ),
                            ),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Cardiologist",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.bold,
                                  fontSize: kLargeTextSize,
                                  color: knormalText,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text(
                                    "Cardiology Center, USA",
                                    style: GoogleFonts.inter(color: kboldTitle),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.orange),

                                      Text("5"),
                                    ],
                                  ),
                                  const SizedBox(width: 3),
                                  SizedBox(
                                    width: 1,
                                    height: 20,
                                    child: Container(color: kDarkTeal),
                                  ),
                                  const SizedBox(width: 3),

                                  Text(
                                    "1,887 Reviews",
                                    style: GoogleFonts.inter(color: kboldTitle),
                                  ),
                                ],
                              ),
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
