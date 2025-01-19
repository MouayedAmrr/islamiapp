import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/assets.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.backgroundRadioBG), fit: BoxFit.cover),
      ),
    );
  }
}