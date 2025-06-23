import 'package:flutter/material.dart';
import 'package:testtest/features/DoctorDetails/Views/Widgets/about_doctor.dart';
import 'package:testtest/features/DoctorDetails/Views/Widgets/book_appointment_button.dart';
import 'package:testtest/features/DoctorDetails/Views/Widgets/doctor_details_bar.dart';
import 'package:testtest/features/DoctorDetails/Views/Widgets/review_card.dart';
import 'package:testtest/utils/constants.dart';

class DoctorsDetailsView extends StatelessWidget {
  const DoctorsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Doctor Details", style: appBarStyle),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.favorite_border_outlined),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                DoctorDetailsCard(),
                DoctorDetailsBar(),
                AboutDoctor(),
                DoctorWorkingTime(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Reviews",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kboldTitle,
                              fontSize: 20,
                            ),
                          ),
                          Text("See all"),
                        ],
                      ),
                      SizedBox(height: 16),
                      ReviewCard(),
                      BookAppointmentButton(),
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

class DoctorWorkingTime extends StatelessWidget {
  const DoctorWorkingTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Working Time",
            style: TextStyle(
              color: kDarkTeal,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text("Monday-Friday, 08.00 AM-18.00 pM"),
        ],
      ),
    );
  }
}

class DoctorDetailsCard extends StatelessWidget {
  const DoctorDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: Row(
                children: [
                  Image.asset('assets/doctor2.png'),
                  SizedBox(width: 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.David Patel",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kboldTitle,
                          fontSize: kLargeTextSize,
                        ),
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
    );
  }
}

/*flutter pub run flutter_launcher_icons:main */
