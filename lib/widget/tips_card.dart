import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

import '../models/tips.dart';

class tipsCard extends StatelessWidget {
  final tips Tips;
  tipsCard(this.Tips);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Tips.imageUrl,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Tips.title,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated at ${Tips.updatedAt}',
              style: greyTextStyle,
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right_rounded,
            color: grayColor,
          ),
        ),
      ],
    );
  }
}
