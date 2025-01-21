import 'package:flutter/material.dart';
import 'package:islamiapp/models/hadith_data.dart';

class hadithCard extends StatelessWidget {
  final HadithData hadithData;
  const hadithCard({super.key, required this.hadithData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/HadithCard.png"), fit: BoxFit.fitWidth),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              hadithData.hadithTitle,
              style: const TextStyle(
                fontFamily: "Janna",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                children: [
                  Text(
                    hadithData.hadithContent,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: "Janna",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
