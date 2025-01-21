import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/core/constants/assets.dart';
import 'package:islamiapp/core/theme/appColors.dart';
import 'package:islamiapp/models/recent_data.dart';

class quranDetails extends StatefulWidget {
  final RecentData quranData;
  quranDetails({super.key, required this.quranData});

  @override
  State<quranDetails> createState() => _quranDetailsState();
}

class _quranDetailsState extends State<quranDetails> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    if(versesList.isEmpty) loadData(widget.quranData.id.toString());
    return SafeArea(
      child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.backgroundSouraDetailsBG), fit: BoxFit.fill)),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(color: appColors.primary),
                title: Text(
                  widget.quranData.suraNameEN,
                  style: TextStyle(
                    fontFamily: "Janna",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: appColors.primary,
                  ),
                ),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 60,),
                    child: Text(
                      widget.quranData.suraNameAR,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Janna",
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: appColors.primary,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemBuilder:(context,index) => Text(
                        "${versesList[index]} [${index+1 }]",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Janna",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: appColors.primary,
                        ),
                      ),
                      itemCount: versesList.length,
                    ),
                  ),

                ],
              ),
            ),
      ),
    );
  }

  void loadData(String suraID) async{
    String content = await rootBundle.loadString("assets/files/Suras/$suraID.txt");
    versesList = content.split("\n");
    setState(() {

    });
  }
}
