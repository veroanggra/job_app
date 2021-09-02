import 'package:flutter/material.dart';
import 'package:job_app/theme.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/onboarding.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'Build Your Next\nFuture Career Like\na Master',
                    style: whiteTextStyle.copyWith(fontSize: 32.0),
                  ),
                  Text(
                    '18,000 jobs available',
                    style: whiteTextStyle.copyWith(fontWeight: FontWeight.w200),
                  ),
                  Spacer(),
                  Center(
                    child: Container(
                      width: 200.0,
                      height: 45.0,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(65))),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          'Get Started',
                          style: purpleTextStyle.copyWith(
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Center(
                    child: Container(
                      width: 200.0,
                      height: 45.0,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: transparentColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(65),
                            side: BorderSide(color: Colors.white),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signin');
                        },
                        child: Text(
                          'Sign In',
                          style: whiteTextStyle.copyWith(
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
