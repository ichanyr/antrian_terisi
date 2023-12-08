import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String discountedPrice;
  final double rating;

  RecommendationCard({
    required this.imagePath,
    required this.title,
    required this.price,
    required this.discountedPrice,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                widthFactor: 2,
                child: Image.asset(
                  imagePath,
                  width: 100,
                  height: 100,
                )),
            SizedBox(height: 30),
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffEE2737)),
                    ),
                    SizedBox(height: 4),
                    Text(
                      discountedPrice,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7E7E7E),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                Align(
                  widthFactor: 3,
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 24,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Color(0xffF06400),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'images/Vector.png',
                          width: 13,
                          height: 13,
                        ),
                        SizedBox(width: 2),
                        Text(
                          rating.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
