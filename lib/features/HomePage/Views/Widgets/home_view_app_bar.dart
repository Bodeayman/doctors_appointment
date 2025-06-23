import 'package:flutter/material.dart';
import 'package:testtest/utils/constants.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 5),
                Text(
                  "Location",
                  style: TextStyle(fontSize: 16, color: knormalText),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_on, color: kboldTitle),
                Text(
                  "Settle,USA",
                  style: TextStyle(
                    fontSize: 20,
                    color: kboldTitle,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            height: 34,
            width: 34,
            child: Container(
              decoration: BoxDecoration(
                color: kTextField,

                borderRadius: BorderRadius.circular(72),
              ),
              width: 36,
              height: 36,
              child: Image.asset('assets/notification-bing.png'),
            ),
          ),
        ),
      ],
    );
  }
}
