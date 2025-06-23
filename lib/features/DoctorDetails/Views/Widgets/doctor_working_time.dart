import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testtest/utils/constants.dart';

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
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: kDarkestColor,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          Text("Monday-Friday, 08.00 AM-18.00 pM"),
        ],
      ),
    );
  }
}
