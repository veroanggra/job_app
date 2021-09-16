import 'package:flutter/material.dart';
import 'package:job_app/theme.dart';
import 'package:job_app/view/job_tile.dart';

class CategoryPage extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CategoryPage({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 270.0,
              width: double.infinity,
              padding: EdgeInsets.only(left: 24.0, bottom: 30.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(imageUrl)),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(16.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: whiteTextStyle.copyWith(
                        fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    '12,309 available',
                    style: whiteTextStyle.copyWith(fontSize: 16.0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Big Companies',
                    style: blackTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  JobTile(
                      companyName: 'Google',
                      jobPosition: 'Font-End Developer',
                      companyImage: 'assets/images/icon_google.png'),
                  JobTile(
                      companyName: 'Instagram',
                      jobPosition: 'UI Designer',
                      companyImage: 'assets/images/icon_instagram.png'),
                  JobTile(
                      companyName: 'Facebook',
                      jobPosition: 'Data Scientist',
                      companyImage: 'assets/images/icon_facebook.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
