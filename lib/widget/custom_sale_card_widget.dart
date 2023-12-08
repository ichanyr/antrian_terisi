import 'package:flutter/material.dart';

class CustomSaleCardWidget extends StatelessWidget {
  final String id;
  final String name;
  final String productCount;
  final String schedule;
  final String price;
  final String status;

  const CustomSaleCardWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.productCount,
    required this.schedule,
    required this.price,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  id,
                  style: TextStyle(
                    color: Color(0xff7E7E7E),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  name,
                  style: TextStyle(
                    color: Color(0xff1C1C1C),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  productCount,
                  style: TextStyle(
                    color: Color(0xff1C1C1C),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Image.asset('images/Group.png'),
                    SizedBox(width: 8),
                    Text(
                      schedule,
                      style: TextStyle(
                        color: Color(0xff7E7E7E),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Text(
                  price,
                  style: TextStyle(
                    color: Color(0xff1C1C1C),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16),
                Card(
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
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
