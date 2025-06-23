import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testtest/features/DoctorDetails/Views/Widgets/about_doctor.dart';
import 'package:testtest/features/DoctorDetails/Views/Widgets/book_appointment_button.dart';
import 'package:testtest/features/DoctorDetails/Views/Widgets/doctor_details_bar.dart';
import 'package:testtest/features/DoctorDetails/Views/Widgets/doctor_details_card.dart';
import 'package:testtest/features/DoctorDetails/Views/Widgets/doctor_working_time.dart';
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
            const SizedBox(width: 12),
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
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              color: kDarkestColor,
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

/*flutter pub run flutter_launcher_icons:main */
