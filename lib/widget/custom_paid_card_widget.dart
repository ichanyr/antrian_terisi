import 'package:flutter/material.dart';

class CustomPaidCard extends StatelessWidget {
  final Color backgroundColor;
  final String text;

  const CustomPaidCard({
    Key? key,
    required this.backgroundColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff03C96A),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'Delivery . Paid',
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
