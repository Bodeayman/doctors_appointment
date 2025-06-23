import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(72),
              child: SizedBox(
                width: 57,
                height: 57,
                child: Image.asset("assets/reviewWoman.png"),
              ),
            ),
            SizedBox(width: 16),
            SizedBox(
              height: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Emily Anderson",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Rating : 5.0"),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          "Dr. Patel is a true professional who genuinely cares about his patients. I highly recommend Dr. Patel to anyone seeking exceptional cardiac care.",
        ),
      ],
    );
  }
}
