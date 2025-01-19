import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/assets.dart';

class TimesTab extends StatelessWidget {
  const TimesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Assets.backgroundTimesBG), fit: BoxFit.cover),
      ),
    );
  }
}