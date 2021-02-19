import 'package:flutter/material.dart';
import 'package:cozy_place/theme.dart';

class FacilitiesItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;

  FacilitiesItem({this.imageUrl, this.name, this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imageUrl, width: 32),
        SizedBox(height: 8),
        Row(
          children: [
            //Note : Price
            Text(
              "$total ",
              style: purpleTextStyle.copyWith(fontSize: 14),
            ),
            Text(
              "$name",
              style: greyTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
      ],
    );
  }
}
