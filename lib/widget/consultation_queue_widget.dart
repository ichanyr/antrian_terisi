import 'package:flutter/material.dart';

class ConsultationQueueWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String age;
  final String nomorAntrian;

  const ConsultationQueueWidget({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.age,
    required this.nomorAntrian,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 180,
      // height: 119,
      child: Column(
        children: [
          _buildTopContainer(),
          _buildBottomContainer(),
        ],
      ),
    );
  }

  Widget _buildTopContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 28, right: 32, left: 32),
        child: Column(
          children: [
            Image.asset(imagePath),
            SizedBox(height: 27),
            Text(name),
            SizedBox(height: 4),
            Text(age),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomContainer() {
    return Container(
      width: 180,
      height: 35,
      decoration: BoxDecoration(
        color: Color(0XFFFEFFEF),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Center(
        child: Text(
          nomorAntrian,
          style: TextStyle(
            color: Color(0XFFF39F06),
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
