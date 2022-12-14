import 'package:cozy/models/space.dart';
import 'package:cozy/pages/detail_page.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class spaceCard extends StatelessWidget {
  final space Space;
  spaceCard(this.Space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detailpage(Space),
          ),
        );
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
                  Image.network(
                    Space.image_url,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(36),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon_star_solid.png',
                              width: 22,
                              height: 22,
                            ),
                            Text(
                              '${Space.rating}/5',
                              style: whiteTextStyle.copyWith(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Space.name,
                style: blackTextStyle.copyWith(fontSize: 18),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: '\$${Space.price}',
                  style: purpleTextStyle.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                      text: '/ month',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '${Space.city}, ${Space.country}',
                style: greyTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
