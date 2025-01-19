import 'package:flutter/material.dart';
import 'package:islamiapp/models/recent_data.dart';

class SuraCardWidget extends StatelessWidget {
  final RecentData recentData;
  final String index;
  const SuraCardWidget({super.key, required this.recentData, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 60,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/icons/suraNumIcn.png"),
                Text(index,
                    style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recentData.suraNameEN,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                "${recentData.suraVerses} Verses",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            recentData.suraNameAR,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}
