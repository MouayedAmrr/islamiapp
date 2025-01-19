import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/assets.dart';

class SbhaTab extends StatelessWidget {
  const SbhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(Assets.backgroundSbhaBG),fit: BoxFit.cover),
      ),
    );
  }
}