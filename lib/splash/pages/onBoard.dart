import 'package:flutter/material.dart';
import 'package:islamiapp/core/theme/appColors.dart';
import 'package:islamiapp/features/layout/pages/layoutPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoard extends StatefulWidget {
  const onBoard({super.key});

  @override
  State<onBoard> createState() => _onBoardState();
}

class _onBoardState extends State<onBoard> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState(){
    super.initState();
    LocaleStorageService.setBool();

  }

  List logo = [
    "assets/onboarding_icons/welcome.png",
    "assets/onboarding_icons/kabba.png",
    "assets/onboarding_icons/reading.png",
    "assets/onboarding_icons/bearish.png",
    "assets/onboarding_icons/radio.png",
  ];
  List title = [
    "",
    "Welcome To Islami",
    "Reading the Quran",
    "Bearish",
    "Holy Quran Radio",
  ];
  List desc = [
    "Welcome To Islmi App",
    "We Are Very Excited To Have You In Our Community",
    "Read, and your Lord is the Most Generous",
    "Praise the name of your Lord, the Most High",
    "You can listen to the Holy Quran Radio through the application for free and easily",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: appColors.secondary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SafeArea(
              child: Stack(
                children: [
                  Center(
                      child: Image.asset(
                    "assets/splash/Mosque.png",
                    width: size.width * 0.6,
                  )),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 60),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          "assets/splash/Islami.png",
                          width: size.width * 0.25,
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 500,
              child: PageView.builder(
                controller: _pageController,
                itemCount: logo.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height * 0.4,
                        child: Image.asset(
                          logo[i],
                          fit: BoxFit.fill,
                        ),
                      ),

                      Text(
                        "${title[i]}",
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: appColors.primary,
                        ),
                      ),
                      Text(
                        "${desc[i]}",
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: appColors.primary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                },
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (_currentIndex > 0)
                      ? TextButton(
                          onPressed: () {
                            if (_currentIndex > 0) {
                              _pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                              setState(() {
                                _currentIndex--;
                              });
                            }
                          },
                          child: Text(
                            "Back",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: appColors.primary,
                            ),
                          ),
                        )
                      : TextButton(
                          onPressed: () =>
                              _pageController.jumpToPage(logo.length - 1),
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: appColors.primary,
                            ),
                          ),
                        ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: logo.length,
                      effect: WormEffect(
                        spacing: 16,
                        dotColor: Colors.grey,
                        activeDotColor: appColors.primary,
                      ),
                    ),
                  ),
                  (_currentIndex == logo.length - 1)
                      ? TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const layoutPage()),
                            );
                          },
                          child: Text(
                            "Finish",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: appColors.primary,
                            ),
                          ),
                        )
                      : TextButton(
                          onPressed: () {
                            if (_currentIndex < logo.length - 1) {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                              setState(() {
                                _currentIndex++;
                              });
                            }
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: appColors.primary,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
