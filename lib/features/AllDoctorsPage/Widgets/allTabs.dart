import 'package:flutter/material.dart';
import 'package:testtest/utils/constants.dart';

class AllTabsWidget extends StatefulWidget {
  const AllTabsWidget({super.key});

  @override
  State<AllTabsWidget> createState() => _AllTabsWidgetState();
}

class _AllTabsWidgetState extends State<AllTabsWidget> {
  final List<String> tabs = const ["All", "InProgress", "Waiting", "Finished"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 31,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;

          return TextButton(
            onPressed: () {
              setState(() {
                selectedIndex = index;
              });
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                isSelected ? kDarkTeal : Colors.grey.shade200,
              ),
              foregroundColor: WidgetStateProperty.all(
                isSelected ? Colors.white : Colors.grey.shade600,
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              ),
              overlayColor: WidgetStateProperty.all(kDarkTeal.withOpacity(0.2)),
            ),
            child: Text(
              tabs[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          );
        },
      ),
    );
  }
}
