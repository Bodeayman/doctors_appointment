import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:testtest/utils/constants.dart';

class BookAppointmentView extends StatelessWidget {
  const BookAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Book Appointment", style: appBarStyle),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text(
                  "Select Date",
                  style: TextStyle(
                    color: kDarkTeal,
                    fontSize: kExtremeTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  height: 268,
                  width: 342,
                  child: Card(
                    color: Color(0xffF9FAFB),
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "June 2023",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: kDefaultFontSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "Select Hour",
                  style: TextStyle(
                    color: kDarkTeal,
                    fontSize: kExtremeTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 212,
                  child: TimePickerSpinner(
                    is24HourMode: false,
                    normalTextStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                    highlightedTextStyle: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                    spacing: 50,
                    itemHeight: 60,
                    isForce2Digits: true,
                    onTimeChange: (time) {
                      print(time);
                    },
                  ),
                ),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 24.0,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: SizedBox(
                      width: 342,
                      height: 48,
                      child: MaterialButton(
                        color: kDarkTeal,
                        onPressed: () => showDialogSuccess(context),
                        child: Text(
                          "Confirm",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
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

void showDialogSuccess(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
        backgroundColor: Colors.white,
        child: SizedBox(
          height: 460,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/completeAppointment.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: Column(
                    children: [
                      Text(
                        "Congratulations",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kDarkTeal,
                          fontSize: kExtremeTextSize,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        textAlign: TextAlign.center,

                        "Your appointment with Dr.David patrol has been done, wait for the new updates please.",
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: SizedBox(
                    width: 245,
                    height: 48,
                    child: MaterialButton(
                      color: kDarkTeal,
                      onPressed:
                          () => {
                            Navigator.of(context).pop(),
                            Navigator.of(context).pop(),
                            Navigator.of(context).pop(),
                            Navigator.of(context).pop(),
                          },
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                TextButton(
                  child: Text("Edit your appointment"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
