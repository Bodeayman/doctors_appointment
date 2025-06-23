import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testtest/utils/constants.dart';

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
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dr.David Patel", style: doctorCardStyle),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                          const SizedBox(height: 4),
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
