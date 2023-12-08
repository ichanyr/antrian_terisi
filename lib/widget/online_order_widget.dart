import 'package:flutter/material.dart';

class OnlineOrderWidget extends StatelessWidget {
  final String id;
  final String title;
  final String subtitle;
  final String amount;
  final String status;

  OnlineOrderWidget({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      // height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              id,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            Text(
              amount,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 14),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff03C96A),
                borderRadius: BorderRadius.circular(30),
              ),
              width: 136,
              height: 36,
              child: Center(child: Text(status)),
            ),
          ],
        ),
      ),
    );
  }
}
