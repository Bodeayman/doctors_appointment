import 'package:flutter/material.dart';
import 'package:testtest/features/BookAppointmentPage/Views/book_appointment_view.dart';
import 'package:testtest/utils/constants.dart';

class BookAppointmentButton extends StatelessWidget {
  const BookAppointmentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: SizedBox(
          width: double.infinity,
          height: 48,
          child: MaterialButton(
            color: kDarkTeal,
            onPressed:
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BookAppointmentView(),
                  ),
                ),
            child: Text(
              "Book Appointment",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
