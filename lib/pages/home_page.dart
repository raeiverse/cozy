import 'package:cozy/models/city.dart';
import 'package:cozy/widget/city_card.dart';
import 'package:cozy/theme.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Mencari kosan yang cozy',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Cities',
                  style: regularTextStyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    cityCard(
                      city(
                          id: 0,
                          name: 'Jakarta',
                          imageUrl: 'assets/home/city1.png'),
                    ),
                    cityCard(
                      city(
                          id: 1,
                          name: 'Bandung',
                          imageUrl: 'assets/home/city2.png',
                          isPopular: true),
                    ),
                    cityCard(
                      city(
                          id: 2,
                          name: 'Surabaya',
                          imageUrl: 'assets/home/city3.png',
                          isPopular: true),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
