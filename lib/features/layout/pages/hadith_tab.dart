import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/core/constants/assets.dart';
import 'package:islamiapp/features/layout/widgets/hadith_item_card.dart';
import 'package:islamiapp/features/layout/widgets/islami_logo_widget.dart';
import 'package:islamiapp/models/hadith_data.dart';

class HadithTab extends StatefulWidget {
   HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List <HadithData> hadithDataList =[];

  @override
  Widget build(BuildContext context) {
    if(hadithDataList.isEmpty) loadHadithData();
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.backgroundHadithBG),fit: BoxFit.cover)
      ),
      child: Column(
        children: [
          islamiLogo(),
          Expanded(child: CarouselSlider(
              items: hadithDataList.map(
                  (e){
                    return hadithCard(hadithData: e,);
                  }
              ).toList(),
              options: CarouselOptions(
               // height: 400,
                aspectRatio: 0.7,
                viewportFraction: 0.7,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.25,
                scrollDirection: Axis.horizontal,
              ),
          ),
          ),
        ],
      ),
    );
  }

  loadHadithData() async{
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadithList = content.split("#");

    for(var element in allHadithList){
      String singleHadith = element.trim();

      String space = "\n";
      int index = singleHadith.indexOf(space);

      String hadithTitle = singleHadith.substring(0,index);
      String hadithContent = singleHadith.substring(index + 1);

      var hadithData = HadithData(hadithTitle: hadithTitle, hadithContent: hadithContent);
      hadithDataList.add(hadithData);

      setState(() {

      });
    }
  }
}