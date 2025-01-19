import 'package:flutter/material.dart';

class islamiLogo extends StatelessWidget {
  const islamiLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
