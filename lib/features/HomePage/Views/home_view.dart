import 'package:flutter/material.dart';
import 'package:testtest/features/HomePage/Data/Models/Category.dart';
import 'package:testtest/features/HomePage/Views/Widgets/home_view_app_bar.dart';
import 'package:testtest/utils/constants.dart';
import 'package:testtest/utils/text_field.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final List<CategoryClass> categoryClassList =
      CategoryClass.constantCategoryTiles;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                HomeViewAppBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: SearchInputField(),
                ),
                SizedBox(
                  width: 342,
                  height: 163,
                  child: PageView(
                    children: [
                      HomeCardContent(),
                      HomeCardContent(),
                      HomeCardContent(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kboldTitle,
                              fontSize: 16,
                            ),
                          ),
                          Text("See all"),
                        ],
                      ),
                      SizedBox(height: 10),
                      GridView.builder(
                        shrinkWrap: true, // key to make it work in Column
                        physics:
                            NeverScrollableScrollPhysics(), // disable scroll inside
                        itemCount: 8,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 14,
                          crossAxisSpacing: 14,
                          childAspectRatio: 0.8,
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset(
                                    categoryClassList[index].imagePath,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  categoryClassList[index].categoryName,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nearby Medical Centers",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kboldTitle,
                        fontSize: 20,
                      ),
                    ),
                    Text("See all"),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 252,
                  width: double.infinity,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CareCenterCard(),
                      );
                    },
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 76,
          child: Column(
            children: [
              SizedBox(height: 14),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Colors.grey.shade400,
                      size: 30,
                    ),
                    Image.asset("assets/Location.png"),
                    Image.asset("assets/Appointment.png"),
                    Image.asset("assets/Profile.png"),
                  ],
                ),
              ),
              SizedBox(height: 14),
            ],
          ),
        ),
      ),
    );
  }
}

class CareCenterCard extends StatelessWidget {
  const CareCenterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: 232,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kContainerRadius),
                topRight: Radius.circular(kContainerRadius),
              ),
              child: Image.asset(
                'assets/clinicPlace.png',
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 40,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sunrise Health Care",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kboldTitle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCardContent extends StatelessWidget {
  const HomeCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/homePageCard.png")),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Looking for",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                  maxLines: 2,
                ),
                Text(
                  "Specialist Doctors?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 30),
                Text(
                  "Schedule your appointment \nwith the greatest doctors ever?",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                  maxLines: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
