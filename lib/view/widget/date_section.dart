import 'package:flutter/material.dart';

class DateSection extends StatelessWidget {
  const DateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 4),
        child: Text(
          '4 Days ago',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
