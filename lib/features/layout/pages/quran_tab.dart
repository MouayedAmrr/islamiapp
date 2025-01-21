import 'package:flutter/material.dart';
import 'package:islamiapp/core/theme/appColors.dart';
import 'package:islamiapp/core/constants/assets.dart';
import 'package:islamiapp/features/layout/pages/quran_details_view.dart';
import 'package:islamiapp/features/layout/widgets/islami_logo_widget.dart';
import 'package:islamiapp/features/layout/widgets/recent_card_widget.dart';
import 'package:islamiapp/features/layout/widgets/sura_card_widget.dart';
import 'package:islamiapp/models/recent_data.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<RecentData> recentData = [
    RecentData(
        id: 1, suraNameEN: "Al-Fatiha", suraNameAR: "الفاتحه", suraVerses: "7"),
    RecentData(
        id: 2,
        suraNameEN: "Al-Baqarah",
        suraNameAR: "البقرة",
        suraVerses: "286"),
    RecentData(
        id: 3,
        suraNameEN: "Aal-E-Imran",
        suraNameAR: "آل عمران",
        suraVerses: "200"),
    RecentData(
        id: 4, suraNameEN: "An-Nisa'", suraNameAR: "النساء", suraVerses: "176"),
    RecentData(
        id: 5,
        suraNameEN: "Al-Ma'idah",
        suraNameAR: "المائدة",
        suraVerses: "120"),
    RecentData(
        id: 6,
        suraNameEN: "Al-An'am",
        suraNameAR: "الأنعام",
        suraVerses: "165"),
    RecentData(
        id: 7,
        suraNameEN: "Al-A'raf",
        suraNameAR: "الأعراف",
        suraVerses: "206"),
    RecentData(
        id: 8, suraNameEN: "Al-Anfal", suraNameAR: "الأنفال", suraVerses: "75"),
    RecentData(
        id: 9,
        suraNameEN: "At-Tawbah",
        suraNameAR: "التوبة",
        suraVerses: "129"),
    RecentData(
        id: 10, suraNameEN: "Yunus", suraNameAR: "يونس", suraVerses: "109"),
    RecentData(id: 11, suraNameEN: "Hud", suraNameAR: "هود", suraVerses: "123"),
    RecentData(
        id: 12, suraNameEN: "Yusuf", suraNameAR: "يوسف", suraVerses: "111"),
    RecentData(
        id: 13, suraNameEN: "Ar-Ra'd", suraNameAR: "الرعد", suraVerses: "43"),
    RecentData(
        id: 14, suraNameEN: "Ibrahim", suraNameAR: "إبراهيم", suraVerses: "52"),
    RecentData(
        id: 15, suraNameEN: "Al-Hijr", suraNameAR: "الحجر", suraVerses: "99"),
    RecentData(
        id: 16, suraNameEN: "An-Nahl", suraNameAR: "النحل", suraVerses: "128"),
    RecentData(
        id: 17,
        suraNameEN: "Al-Isra",
        suraNameAR: "الإسراء",
        suraVerses: "111"),
    RecentData(
        id: 18, suraNameEN: "Al-Kahf", suraNameAR: "الكهف", suraVerses: "110"),
    RecentData(
        id: 19, suraNameEN: "Maryam", suraNameAR: "مريم", suraVerses: "98"),
    RecentData(
        id: 20, suraNameEN: "Ta-Ha", suraNameAR: "طه", suraVerses: "135"),
    RecentData(
        id: 21,
        suraNameEN: "Al-Anbiya",
        suraNameAR: "الأنبياء",
        suraVerses: "112"),
    RecentData(
        id: 22, suraNameEN: "Al-Hajj", suraNameAR: "الحج", suraVerses: "78"),
    RecentData(
        id: 23,
        suraNameEN: "Al-Mu'minun",
        suraNameAR: "المؤمنون",
        suraVerses: "118"),
    RecentData(
        id: 24, suraNameEN: "An-Nur", suraNameAR: "النّور", suraVerses: "64"),
    RecentData(
        id: 25,
        suraNameEN: "Al-Furqan",
        suraNameAR: "الفرقان",
        suraVerses: "77"),
    RecentData(
        id: 26,
        suraNameEN: "Ash-Shu'ara",
        suraNameAR: "الشعراء",
        suraVerses: "227"),
    RecentData(
        id: 27, suraNameEN: "An-Naml", suraNameAR: "النّمل", suraVerses: "93"),
    RecentData(
        id: 28, suraNameEN: "Al-Qasas", suraNameAR: "القصص", suraVerses: "88"),
    RecentData(
        id: 29,
        suraNameEN: "Al-Ankabut",
        suraNameAR: "العنكبوت",
        suraVerses: "69"),
    RecentData(
        id: 30, suraNameEN: "Ar-Rum", suraNameAR: "الرّوم", suraVerses: "60"),
    RecentData(
        id: 31, suraNameEN: "Luqman", suraNameAR: "لقمان", suraVerses: "34"),
    RecentData(
        id: 32, suraNameEN: "As-Sajda", suraNameAR: "السجدة", suraVerses: "30"),
    RecentData(
        id: 33,
        suraNameEN: "Al-Ahzab",
        suraNameAR: "الأحزاب",
        suraVerses: "73"),
    RecentData(id: 34, suraNameEN: "Saba", suraNameAR: "سبأ", suraVerses: "54"),
    RecentData(
        id: 35, suraNameEN: "Fatir", suraNameAR: "فاطر", suraVerses: "45"),
    RecentData(
        id: 36, suraNameEN: "Ya-Sin", suraNameAR: "يس", suraVerses: "83"),
    RecentData(
        id: 37,
        suraNameEN: "As-Saffat",
        suraNameAR: "الصافات",
        suraVerses: "182"),
    RecentData(id: 38, suraNameEN: "Sad", suraNameAR: "ص", suraVerses: "88"),
    RecentData(
        id: 39, suraNameEN: "Az-Zumar", suraNameAR: "الزمر", suraVerses: "75"),
    RecentData(
        id: 40, suraNameEN: "Ghafir", suraNameAR: "غافر", suraVerses: "85"),
    RecentData(
        id: 41, suraNameEN: "Fussilat", suraNameAR: "فصّلت", suraVerses: "54"),
    RecentData(
        id: 42,
        suraNameEN: "Ash-Shura",
        suraNameAR: "الشورى",
        suraVerses: "53"),
    RecentData(
        id: 43,
        suraNameEN: "Az-Zukhruf",
        suraNameAR: "الزخرف",
        suraVerses: "89"),
    RecentData(
        id: 44,
        suraNameEN: "Ad-Dukhan",
        suraNameAR: "الدّخان",
        suraVerses: "59"),
    RecentData(
        id: 45,
        suraNameEN: "Al-Jathiya",
        suraNameAR: "الجاثية",
        suraVerses: "37"),
    RecentData(
        id: 46,
        suraNameEN: "Al-Ahqaf",
        suraNameAR: "الأحقاف",
        suraVerses: "35"),
    RecentData(
        id: 47, suraNameEN: "Muhammad", suraNameAR: "محمد", suraVerses: "38"),
    RecentData(
        id: 48, suraNameEN: "Al-Fath", suraNameAR: "الفتح", suraVerses: "29"),
    RecentData(
        id: 49,
        suraNameEN: "Al-Hujurat",
        suraNameAR: "الحجرات",
        suraVerses: "18"),
    RecentData(id: 50, suraNameEN: "Qaf", suraNameAR: "ق", suraVerses: "45"),
    RecentData(
        id: 51,
        suraNameEN: "Adh-Dhariyat",
        suraNameAR: "الذاريات",
        suraVerses: "60"),
    RecentData(
        id: 52, suraNameEN: "At-Tur", suraNameAR: "الطور", suraVerses: "49"),
    RecentData(
        id: 53, suraNameEN: "An-Najm", suraNameAR: "النجم", suraVerses: "62"),
    RecentData(
        id: 54, suraNameEN: "Al-Qamar", suraNameAR: "القمر", suraVerses: "55"),
    RecentData(
        id: 55,
        suraNameEN: "Ar-Rahman",
        suraNameAR: "الرحمن",
        suraVerses: "78"),
    RecentData(
        id: 56,
        suraNameEN: "Al-Waqi'a",
        suraNameAR: "الواقعة",
        suraVerses: "96"),
    RecentData(
        id: 57, suraNameEN: "Al-Hadid", suraNameAR: "الحديد", suraVerses: "29"),
    RecentData(
        id: 58,
        suraNameEN: "Al-Mujadila",
        suraNameAR: "المجادلة",
        suraVerses: "22"),
    RecentData(
        id: 59, suraNameEN: "Al-Hashr", suraNameAR: "الحشر", suraVerses: "24"),
    RecentData(
        id: 60,
        suraNameEN: "Al-Mumtahina",
        suraNameAR: "الممتحنة",
        suraVerses: "13"),
    RecentData(
        id: 61, suraNameEN: "As-Saff", suraNameAR: "الصف", suraVerses: "14"),
    RecentData(
        id: 62,
        suraNameEN: "Al-Jumu'a",
        suraNameAR: "الجمعة",
        suraVerses: "11"),
    RecentData(
        id: 63,
        suraNameEN: "Al-Munafiqun",
        suraNameAR: "المنافقون",
        suraVerses: "11"),
    RecentData(
        id: 64,
        suraNameEN: "At-Taghabun",
        suraNameAR: "التغابن",
        suraVerses: "18"),
    RecentData(
        id: 65, suraNameEN: "At-Talaq", suraNameAR: "الطلاق", suraVerses: "12"),
    RecentData(
        id: 66,
        suraNameEN: "At-Tahrim",
        suraNameAR: "التحريم",
        suraVerses: "12"),
    RecentData(
        id: 67, suraNameEN: "Al-Mulk", suraNameAR: "الملك", suraVerses: "30"),
    RecentData(
        id: 68, suraNameEN: "Al-Qalam", suraNameAR: "القلم", suraVerses: "52"),
    RecentData(
        id: 69,
        suraNameEN: "Al-Haqqah",
        suraNameAR: "الحاقة",
        suraVerses: "52"),
    RecentData(
        id: 70,
        suraNameEN: "Al-Ma'arij",
        suraNameAR: "المعارج",
        suraVerses: "44"),
    RecentData(id: 71, suraNameEN: "Nuh", suraNameAR: "نوح", suraVerses: "28"),
    RecentData(
        id: 72, suraNameEN: "Al-Jinn", suraNameAR: "الجن", suraVerses: "28"),
    RecentData(
        id: 73,
        suraNameEN: "Al-Muzzammil",
        suraNameAR: "المزّمّل",
        suraVerses: "20"),
    RecentData(
        id: 74,
        suraNameEN: "Al-Muddathir",
        suraNameAR: "المدّثر",
        suraVerses: "56"),
    RecentData(
        id: 75,
        suraNameEN: "Al-Qiyamah",
        suraNameAR: "القيامة",
        suraVerses: "40"),
    RecentData(
        id: 76,
        suraNameEN: "Al-Insan",
        suraNameAR: "الإنسان",
        suraVerses: "31"),
    RecentData(
        id: 77,
        suraNameEN: "Al-Mursalat",
        suraNameAR: "المرسلات",
        suraVerses: "50"),
    RecentData(
        id: 78, suraNameEN: "An-Naba'", suraNameAR: "النبأ", suraVerses: "40"),
    RecentData(
        id: 79,
        suraNameEN: "An-Nazi'at",
        suraNameAR: "النازعات",
        suraVerses: "46"),
    RecentData(
        id: 80, suraNameEN: "Abasa", suraNameAR: "عبس", suraVerses: "42"),
    RecentData(
        id: 81,
        suraNameEN: "At-Takwir",
        suraNameAR: "التكوير",
        suraVerses: "29"),
    RecentData(
        id: 82,
        suraNameEN: "Al-Infitar",
        suraNameAR: "الإنفطار",
        suraVerses: "19"),
    RecentData(
        id: 83,
        suraNameEN: "Al-Mutaffifin",
        suraNameAR: "المطفّفين",
        suraVerses: "36"),
    RecentData(
        id: 84,
        suraNameEN: "Al-Inshiqaq",
        suraNameAR: "الإنشقاق",
        suraVerses: "25"),
    RecentData(
        id: 85, suraNameEN: "Al-Buruj", suraNameAR: "البروج", suraVerses: "22"),
    RecentData(
        id: 86, suraNameEN: "At-Tariq", suraNameAR: "الطارق", suraVerses: "17"),
    RecentData(
        id: 87, suraNameEN: "Al-A'la", suraNameAR: "الأعلى", suraVerses: "19"),
    RecentData(
        id: 88,
        suraNameEN: "Al-Ghashiyah",
        suraNameAR: "الغاشية",
        suraVerses: "26"),
    RecentData(
        id: 89, suraNameEN: "Al-Fajr", suraNameAR: "الفجر", suraVerses: "30"),
    RecentData(
        id: 90, suraNameEN: "Al-Balad", suraNameAR: "البلد", suraVerses: "20"),
    RecentData(
        id: 91, suraNameEN: "Ash-Shams", suraNameAR: "الشمس", suraVerses: "15"),
    RecentData(
        id: 92, suraNameEN: "Al-Lail", suraNameAR: "الليل", suraVerses: "21"),
    RecentData(
        id: 93, suraNameEN: "Ad-Duha", suraNameAR: "الضحى", suraVerses: "11"),
    RecentData(
        id: 94, suraNameEN: "Ash-Sharh", suraNameAR: "الشرح", suraVerses: "8"),
    RecentData(
        id: 95, suraNameEN: "At-Tin", suraNameAR: "التين", suraVerses: "8"),
    RecentData(
        id: 96, suraNameEN: "Al-Alaq", suraNameAR: "العلق", suraVerses: "19"),
    RecentData(
        id: 97, suraNameEN: "Al-Qadr", suraNameAR: "القدر", suraVerses: "5"),
    RecentData(
        id: 98,
        suraNameEN: "Al-Bayyina",
        suraNameAR: "البينة",
        suraVerses: "8"),
    RecentData(
        id: 99,
        suraNameEN: "Az-Zalzalah",
        suraNameAR: "الزلزلة",
        suraVerses: "8"),
    RecentData(
        id: 100,
        suraNameEN: "Al-Adiyat",
        suraNameAR: "العاديات",
        suraVerses: "11"),
    RecentData(
        id: 101,
        suraNameEN: "Al-Qari'a",
        suraNameAR: "القارعة",
        suraVerses: "8"),
    RecentData(
        id: 102,
        suraNameEN: "At-Takathur",
        suraNameAR: "التكاثر",
        suraVerses: "3"),
    RecentData(
        id: 103, suraNameEN: "Al-Asr", suraNameAR: "العصر", suraVerses: "9"),
    RecentData(
        id: 104,
        suraNameEN: "Al-Humazah",
        suraNameAR: "الهمزة",
        suraVerses: "5"),
    RecentData(
        id: 105, suraNameEN: "Al-Fil", suraNameAR: "الفيل", suraVerses: "4"),
    RecentData(
        id: 106, suraNameEN: "Quraysh", suraNameAR: "قريش", suraVerses: "6"),
    RecentData(
        id: 107,
        suraNameEN: "Al-Ma'un",
        suraNameAR: "الماعون",
        suraVerses: "3"),
    RecentData(
        id: 108,
        suraNameEN: "Al-Kawthar",
        suraNameAR: "الكوثر",
        suraVerses: "6"),
    RecentData(
        id: 109,
        suraNameEN: "Al-Kafirun",
        suraNameAR: "الكافرون",
        suraVerses: "3"),
    RecentData(
        id: 110, suraNameEN: "An-Nasr", suraNameAR: "النصر", suraVerses: "5"),
    RecentData(
        id: 111, suraNameEN: "Al-Masad", suraNameAR: "المسد", suraVerses: "4"),
    RecentData(
        id: 112,
        suraNameEN: "Al-Ikhlas",
        suraNameAR: "الإخلاص",
        suraVerses: "3"),
    RecentData(
        id: 113, suraNameEN: "Al-Falaq", suraNameAR: "الفلق", suraVerses: "5"),
    RecentData(
        id: 114, suraNameEN: "An-Nas", suraNameAR: "الناس", suraVerses: "5"),
  ];

  List<RecentData> searchSuraModels = [];
  String searchQuery = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.backgroundQuranBG), fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const islamiLogo(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (value) {
                      searchQuery = value;
                      search();
                      setState(() {});
                    },
                    cursorColor: appColors.primary,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: "Janna",
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: "Sura Name",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: "Janna",
                        color: Colors.white,
                      ),
                      fillColor: appColors.secondary.withOpacity(0.5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: appColors.primary,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: appColors.primary,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ImageIcon(
                          const AssetImage(Assets.iconsQuran),
                          color: appColors.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: searchQuery.isEmpty,
                  replacement: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => quranDetails(quranData: recentData[index],))
                        );
                      },
                      child: SuraCardWidget(
                        recentData: searchSuraModels[index],
                      ),
                    ),
                    separatorBuilder: (context, index) => const Divider(
                      endIndent: 50,
                      indent: 50,
                    ),
                    itemCount: searchSuraModels.length,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Most Recently",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Janna",
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFE8),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 155,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => RecentCardWidget(
                            recentData: recentData[index],
                          ),
                          itemCount: recentData.length,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        child: Text(
                          "Suras List",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Janna",
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFE8),
                          ),
                        ),
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => quranDetails(quranData: recentData[index]))
                            );
                          },
                          child: SuraCardWidget(
                            recentData: recentData[index],
                          ),
                        ),
                        separatorBuilder: (context, index) => const Divider(
                          endIndent: 50,
                          indent: 50,
                        ),
                        itemCount: recentData.length,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void search() {
    searchSuraModels = [];
    for (RecentData sura in recentData) {
      if (sura.suraNameAR.toLowerCase().contains(searchQuery.toLowerCase()) ||
          sura.suraNameEN.toLowerCase().contains(searchQuery.toLowerCase())) {
        {
          searchSuraModels.add(sura);
        }
      }
    }
  }
}
