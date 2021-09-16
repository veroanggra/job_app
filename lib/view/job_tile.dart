import 'package:flutter/material.dart';
import 'package:job_app/theme.dart';
import 'package:job_app/view/detail_screen.dart';

class JobTile extends StatelessWidget {
  final String companyName;
  final String jobPosition;
  final String companyImage;

  const JobTile(
      {required this.companyName,
      required this.jobPosition,
      required this.companyImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  detailScreen()) );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            companyImage,
            width: 44.0,
          ),
          SizedBox(
            width: 24.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobPosition,
                  style: blackTextStyle.copyWith(
                      fontSize: 16.0, fontWeight: FontWeight.w600),
                ),
                Text(companyName, style: greyTextStyle),
                SizedBox(height: 16.0),
                Divider(thickness: 1),
                SizedBox(height: 16.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
