import 'package:flutter/material.dart';
import 'package:testtest/features/AllDoctorsPage/all_doctors_view.dart';
import 'package:testtest/utils/constants.dart';

class SearchInputField extends StatelessWidget {
  const SearchInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),

      child: TextField(
        onSubmitted:
            (value) => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => AllDoctorsView())),
        decoration: InputDecoration(
          fillColor: kTextField,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: knormalText),
            borderRadius: BorderRadius.circular(kContainerRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kContainerRadius),
            borderSide: BorderSide(color: knormalText),
          ),
          enabledBorder: InputBorder.none,

          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          filled: true,
          hintText: "Search doctor...",
          hintStyle: TextStyle(color: knormalText),
        ),
      ),
    );
  }
}
