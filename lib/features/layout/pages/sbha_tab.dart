import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/assets.dart';
import 'package:islamiapp/features/layout/widgets/islami_logo_widget.dart';

class SbhaTab extends StatefulWidget {
  const SbhaTab({super.key});

  @override
  State<SbhaTab> createState() => _SbhaTabState();
}

class _SbhaTabState extends State<SbhaTab> {
  int counter =0;
  double angle=0;

  int currentIndex=0;
  List<String> list= ["لا اله الا الله","الحمدلله","سبحان الله"];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.backgroundSbhaBG), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          const islamiLogo(),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
            style: TextStyle(
              fontFamily: "Janna",
              fontWeight: FontWeight.w700,
              fontSize: 36,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Center(
            child: GestureDetector(
              onTap: _onSbhaTap,
              child: Stack(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: size.width * 0.33),
                          child: Image.asset(
                            "assets/sbhaHead.png",
                            height: size.height * 0.11,
                          ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: size.width * 0.20),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Transform.rotate(
                                angle: angle,
                                child: Image.asset(
                                  "assets/SebhaBody.png",
                                  height: size.width * 0.70,
                                  width: size.width * 0.70,
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                "${list[currentIndex]} \n$counter",
                                style: const TextStyle(
                                  fontSize: 32,
                                  fontFamily: "Janna",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                      ),
                    ],
                  ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
  _onSbhaTap(){
    counter++;
    angle -=10;

    if (counter == 33){
      counter=0;
      currentIndex++;
      if (currentIndex == 3) currentIndex =0;
    }

    setState(() {
    });
  }
}
