import 'package:cozy_place/models/space.dart';
import 'package:cozy_place/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:cozy_place/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
                width: 130,
                height: 110,
                child: Stack(
                  children: [
                    Image.asset(
                      space.imageUrl,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                color: purpleColor,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(36))),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icon_star.png",
                                    width: 22,
                                    height: 22,
                                  ),
                                  Text(
                                    "${space.rating}/5",
                                    style:
                                        whiteTextStyle.copyWith(fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text(
                    "\$${space.price} ",
                    style: purpleTextStyle.copyWith(fontSize: 16),
                  ),
                  Text(
                    "/ Month",
                    style: greyTextStyle.copyWith(fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: 16),
              Text(
                "${space.city}, ${space.country}",
                style: greyTextStyle.copyWith(fontSize: 14),
              )
            ],
          ),
        ],
      ),
    );
  }
}
