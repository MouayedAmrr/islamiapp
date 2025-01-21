import 'package:flutter/material.dart';
import 'package:islamiapp/core/theme/appColors.dart';
import 'package:islamiapp/models/recent_data.dart';

class RecentCardWidget extends StatelessWidget {
  final RecentData recentData;
  const RecentCardWidget({super.key, required this.recentData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: appColors.primary, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                recentData.suraNameEN,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Janna",
                    fontWeight: FontWeight.w700),
              ),
              Text(
                recentData.suraNameAR,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Janna",
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "${recentData.suraVerses} Verses",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Janna",
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Image.asset("assets/quranIMG.png")
        ],
      ),
    );
  }
}
