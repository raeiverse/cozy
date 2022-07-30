import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class bottom_navBar extends StatelessWidget {
  String imageUrl;
  bool isActive;

  bottom_navBar({this.imageUrl, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        Spacer(),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: purpleColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(1000),
            ),
          ),
        ),
      ],
    );
  }
}
