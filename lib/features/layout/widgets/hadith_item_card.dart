import 'package:flutter/material.dart';

class hadithCard extends StatelessWidget {
  const hadithCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/HadithCard.png"),fit: BoxFit.fitWidth),
      ),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text(
            "الحديث الأول",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
