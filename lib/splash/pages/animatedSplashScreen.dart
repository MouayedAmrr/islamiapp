import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:islamiapp/splash/pages/onBoard.dart';

class AnimatedSplashScreen extends StatelessWidget {
  const AnimatedSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var _duration = Duration(milliseconds: 2500);
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const onBoard()),
      );
    });
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/splash/splashBackground.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: size.width * 0.05),
              child: Align(
                alignment: Alignment.topRight,
                child: FadeInDown(
                    duration: _duration,
                    child: Image.asset(
                      "assets/splash/topRightShape.png",
                      width: size.width * 0.20,
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.10),
              child: Align(
                alignment: Alignment.topCenter,
                child: ZoomIn(
                    duration: _duration,
                    child: Image.asset(
                      "assets/splash/Mosque.png",
                      width: size.width * 0.6,
                    )),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ZoomIn(
                duration: _duration,
                child: Image.asset(
                  "assets/splash/islamiLogo.png",
                  width: size.width * 0.50,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 250),
              child: Align(
                alignment: Alignment.center,
                child: ZoomIn(
                  duration: _duration,
                  child: Image.asset(
                    "assets/splash/Islami.png",
                    width: size.width * 0.25,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: size.height * 0.30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: FadeInLeft(
                  duration: _duration,
                  child: Image.asset(
                    "assets/splash/leftShape.png",
                    width: size.width * 0.25,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.50),
              child: Align(
                alignment: Alignment.centerRight,
                child: FadeInRight(
                  duration: _duration,
                  child: Image.asset(
                    "assets/splash/rightShape.png",
                    width: size.width * 0.25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/splash/routeBranding.png",
                  width: size.width * 0.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
