import 'package:flutter/material.dart';
import 'package:testtest/utils/constants.dart';

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About me",
            style: TextStyle(
              color: kDarkTeal,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Dr. David Patel, a dedicated cardiologist, brings a wealth of experience to Golden Gate Cardiology Center in Golden Gate, CA. view more",
          ),
        ],
      ),
    );
  }
}
