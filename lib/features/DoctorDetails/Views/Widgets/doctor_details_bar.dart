import 'package:flutter/material.dart';
import 'package:testtest/utils/constants.dart';

class DoctorDetailsBar extends StatelessWidget {
  const DoctorDetailsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: 102,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(67.5),
                  child: Container(
                    color: kTextField,
                    height: 56,
                    width: 56,
                    child: Icon(Icons.people),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "2000+",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Patients"),
              ],
            ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(67.5),
                  child: Container(
                    color: kTextField,
                    height: 56,
                    width: 56,
                    child: Icon(Icons.people),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "10+",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Experience"),
              ],
            ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(67.5),
                  child: Container(
                    color: kTextField,
                    height: 56,
                    width: 56,
                    child: Icon(Icons.people),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "5",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Rating"),
              ],
            ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(67.5),
                  child: Container(
                    color: kTextField,
                    height: 56,
                    width: 56,
                    child: Icon(Icons.message),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "1872",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text("Reviews"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
