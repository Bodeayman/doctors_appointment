import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:testtest/utils/constants.dart';
import 'package:intl/intl.dart';

class BookAppointmentView extends StatefulWidget {
  const BookAppointmentView({super.key});

  @override
  State<BookAppointmentView> createState() => _BookAppointmentViewState();
}

class _BookAppointmentViewState extends State<BookAppointmentView> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  String _selectedTime = "";

  final List<String> timeSlots = [
    "09.00 AM",
    "09.30 AM",
    "10.00 AM",
    "10.30 AM",
    "11.00 AM",
    "11.30 AM",
    "03.00 PM",
    "03.30 PM",
    "04.00 PM",
    "04.30 PM",
    "05.00 PM",
    "05.30 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Book Appointment", style: appBarStyle),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Text(
                  "Select Date",
                  style: GoogleFonts.inter(
                    color: kDarkTeal,
                    fontSize: kExtremeTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),

                const SizedBox(height: 8),

                SizedBox(
                  height: 269,
                  child: Card(
                    color: const Color(0xffF9FAFB),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(
                                DateFormat(
                                  'MMMM yyyy',
                                ).format(_focusedDay), // 👉 Shows "August 2025"
                                style: TextStyle(
                                  fontSize: kDefaultFontSize,
                                  fontWeight: FontWeight.bold,
                                  color: kDarkTeal,
                                ),
                              ),
                            ),

                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.chevron_left,
                                    color: kDarkTeal,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _focusedDay = DateTime(
                                        _focusedDay.year,
                                        _focusedDay.month - 1,
                                      );
                                    });
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.chevron_right,
                                    color: kDarkTeal,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _focusedDay = DateTime(
                                        _focusedDay.year,
                                        _focusedDay.month + 1,
                                      );
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        TableCalendar(
                          headerVisible: false, // hide built-in header
                          firstDay: DateTime.utc(2020, 1, 1),
                          lastDay: DateTime.utc(2030, 12, 31),
                          focusedDay: _focusedDay,
                          selectedDayPredicate:
                              (day) => isSameDay(_selectedDay, day),
                          onDaySelected: (selectedDay, focusedDay) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _focusedDay = focusedDay;
                            });
                          },

                          rowHeight: 30,
                          calendarStyle: CalendarStyle(
                            todayDecoration: BoxDecoration(
                              color: kDarkTeal.withOpacity(0.2),
                              shape: BoxShape.rectangle,
                            ),
                            selectedDecoration: BoxDecoration(
                              color: kDarkTeal,
                              shape: BoxShape.rectangle,
                            ),
                            tablePadding: EdgeInsets.symmetric(vertical: 4),
                          ),
                          calendarFormat: CalendarFormat.month,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  "Select Hour",
                  style: GoogleFonts.inter(
                    color: kDarkTeal,
                    fontSize: kExtremeTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 212,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 2.5,
                    ),
                    itemCount: timeSlots.length,
                    itemBuilder: (context, index) {
                      final time = timeSlots[index];
                      final isSelected = time == _selectedTime;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedTime = time;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? kDarkTeal
                                    : const Color(0xffF9FAFB),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            time,
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                              fontWeight:
                                  isSelected
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 32),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: MaterialButton(
                        color: kDarkTeal,
                        onPressed: () {
                          if (_selectedDay != null &&
                              _selectedTime.isNotEmpty) {
                            showDialogSuccess(context);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Please select both date and time.",
                                ),
                              ),
                            );
                          }
                        },
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
