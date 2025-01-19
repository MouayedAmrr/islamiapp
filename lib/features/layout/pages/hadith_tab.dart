import 'package:flutter/material.dart';
import 'package:islamiapp/core/constants/assets.dart';
import 'package:islamiapp/features/layout/widgets/islami_logo_widget.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.backgroundHadithBG),fit: BoxFit.cover)
      ),
      child: Column(
        children: [
          islamiLogo(),
        ],
      ),
    );
  }
}