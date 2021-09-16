import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:job_app/theme.dart';
import 'package:job_app/view/card_design.dart';
import 'package:job_app/view/job_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Howdy',
                          style: greyTextStyle.copyWith(fontSize: 16.0),
                        ),
                        Text(
                          'Jason Powell',
                          style: blackTextStyle.copyWith(
                              fontSize: 24.0, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    Container(
                        width: 60.0,
                        height: 60.0,
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: primaryColor)),
                        child: Image.asset('assets/images/image_profile.png'))
                  ],
                ),
                SizedBox(height: 30.0),
                Text(
                  'Hot Categories',
                  style: blackTextStyle.copyWith(fontSize: 16.0),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CardCategory(
                          jobImage: 'assets/images/image_category1.png',
                          jobType: 'Website Developer'),
                      CardCategory(
                          jobImage: 'assets/images/image_category2.png',
                          jobType: 'Mobile Developer'),
                      CardCategory(
                          jobImage: 'assets/images/image_category3.png',
                          jobType: 'App Designer'),
                      CardCategory(
                          jobImage: 'assets/images/image_category4.png',
                          jobType: 'Content Writer'),
                      CardCategory(
                          jobImage: 'assets/images/image_category5.png',
                          jobType: 'Video Grapher'),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'Just Posted',
                  style: blackTextStyle.copyWith(fontSize: 16.0),
                ),
                SizedBox(
                  height: 16.0,
                ),
                JobTile(
                    companyName: 'Google',
                    jobPosition: 'Frontend Developer',
                    companyImage: 'assets/images/icon_google.png'),
                JobTile(
                    companyName: 'Instagram',
                    jobPosition: 'UI Designer ',
                    companyImage: 'assets/images/icon_instagram.png'),
                JobTile(
                    companyName: 'Facebook',
                    jobPosition: 'Data Scientist ',
                    companyImage: 'assets/images/icon_facebook.png')
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.pink[100],
        inactiveIconColor: Colors.red[200],
        tabs: [
          TabData(iconData: Icons.home, title: 'Home'),
          TabData(iconData: Icons.search, title: 'Search'),
          TabData(iconData: Icons.person, title: 'Profile'),
        ], onTabChangedListener: (int position) {
          setState(() {
            currentPosition = position;
          });
      },
      ),
    );
  }
}
