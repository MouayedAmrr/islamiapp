import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/assets.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.backgroundHadithBG),fit: BoxFit.cover)
      ),
      child: Column(
        children: [
          SafeArea(
            child: Stack(
              children: [
                Center(
                    child: Image.asset(
                      "assets/splash/Mosque.png",
                      width: 300,
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 60),
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "assets/splash/Islami.png",
                        width: 150,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}