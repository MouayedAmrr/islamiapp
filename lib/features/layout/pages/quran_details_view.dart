import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/assets.dart';
import 'package:islamiapp/core/theme/appColors.dart';

class quranDetails extends StatelessWidget {
  const quranDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.backgroundSouraDetailsBG), fit: BoxFit.fill)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(color: appColors.primary),
                title: Text(
                  "Al-Fatiha",
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: appColors.primary,
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
