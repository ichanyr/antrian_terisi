import 'package:flutter/material.dart';

class CustomUnpaidCard extends StatelessWidget {
  final Color backgroundColor;
  final String text;

  const CustomUnpaidCard({
    Key? key,
    required this.backgroundColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffEE2737),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'Pick Up . Unpaid',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
