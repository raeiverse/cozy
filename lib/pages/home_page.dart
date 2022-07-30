import 'package:cozy/models/city.dart';
import 'package:cozy/models/space.dart';
import 'package:cozy/models/tips.dart';
import 'package:cozy/widget/bottom_navBar.dart';
import 'package:cozy/widget/city_card.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widget/space_card.dart';
import 'package:cozy/widget/tips_card.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // Note: header
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
            // Note : Popular Cities
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
                      imageUrl: 'assets/home/city1.png',
                    ),
                  ),
                  cityCard(
                    city(
                      id: 1,
                      name: 'Bandung',
                      imageUrl: 'assets/home/city2.png',
                      isPopular: true,
                    ),
                  ),
                  cityCard(
                    city(
                      id: 2,
                      name: 'Surabaya',
                      imageUrl: 'assets/home/city3.png',
                    ),
                  ),
                ],
              ),
            ),
            // Note : Recommended Space
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  spaceCard(
                    space(
                      id: 0,
                      name: 'Kuretakeso Hott',
                      imageUrl: 'assets/home/city1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Germany',
                      rating: 4,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  spaceCard(
                    space(
                      id: 1,
                      name: 'Roemah Nenek',
                      imageUrl: 'assets/home/city2.png',
                      price: 11,
                      city: 'Seattle',
                      country: 'Bogor',
                      rating: 5,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  spaceCard(
                    space(
                      id: 2,
                      name: 'Darrling How',
                      imageUrl: 'assets/home/city3.png',
                      price: 20,
                      city: 'Jakarta',
                      country: 'Indonesia',
                      rating: 3,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            // Note: Tips & Guidances
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  tipsCard(
                    tips(
                      id: 0,
                      title: 'City Guideliness',
                      imageUrl: 'assets/home/tips1.png',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  tipsCard(
                    tips(
                      id: 0,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/home/tips2.png',
                      updatedAt: '11 Des',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: // Note: Bottom Navigation Bar
          Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottom_navBar(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            bottom_navBar(
              imageUrl: 'assets/icon_mail.png',
              isActive: false,
            ),
            bottom_navBar(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            bottom_navBar(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
