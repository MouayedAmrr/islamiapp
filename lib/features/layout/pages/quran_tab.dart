import 'package:flutter/material.dart';
import 'package:islamiapp/core/theme/appColors.dart';
import 'package:islamiapp/core/constants/assets.dart';
import 'package:islamiapp/features/layout/widgets/recent_card_widget.dart';
import 'package:islamiapp/features/layout/widgets/sura_card_widget.dart';
import 'package:islamiapp/models/recent_data.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  List<RecentData> recentData = [
    RecentData(suraNameEN: "Al-Fatiha", suraNameAR: "الفاتحه", suraVerses: "7"),
    RecentData(
        suraNameEN: "Al-Baqarah", suraNameAR: "البقرة", suraVerses: "286"),
    RecentData(
        suraNameEN: "Aal-E-Imran", suraNameAR: "آل عمران", suraVerses: "200"),
    RecentData(suraNameEN: "An-Nisa'", suraNameAR: "النساء", suraVerses: "176"),
    RecentData(
        suraNameEN: "Al-Ma'idah", suraNameAR: "المائدة", suraVerses: "120"),
    RecentData(
        suraNameEN: "Al-An'am", suraNameAR: "الأنعام", suraVerses: "165"),
    RecentData(
        suraNameEN: "Al-A'raf", suraNameAR: "الأعراف", suraVerses: "206"),
    RecentData(suraNameEN: "Al-Anfal", suraNameAR: "الأنفال", suraVerses: "75"),
    RecentData(
        suraNameEN: "At-Tawbah", suraNameAR: "التوبة", suraVerses: "129"),
    RecentData(suraNameEN: "Yunus", suraNameAR: "يونس", suraVerses: "109"),
    RecentData(suraNameEN: "Hud", suraNameAR: "هود", suraVerses: "123"),
    RecentData(suraNameEN: "Yusuf", suraNameAR: "يوسف", suraVerses: "111"),
    RecentData(suraNameEN: "Ar-Ra'd", suraNameAR: "الرعد", suraVerses: "43"),
    RecentData(suraNameEN: "Ibrahim", suraNameAR: "إبراهيم", suraVerses: "52"),
    RecentData(suraNameEN: "Al-Hijr", suraNameAR: "الحجر", suraVerses: "99"),
    RecentData(suraNameEN: "An-Nahl", suraNameAR: "النحل", suraVerses: "128"),
    RecentData(suraNameEN: "Al-Isra", suraNameAR: "الإسراء", suraVerses: "111"),
    RecentData(suraNameEN: "Al-Kahf", suraNameAR: "الكهف", suraVerses: "110"),
    RecentData(suraNameEN: "Maryam", suraNameAR: "مريم", suraVerses: "98"),
    RecentData(suraNameEN: "Ta-Ha", suraNameAR: "طه", suraVerses: "135"),
    RecentData(
        suraNameEN: "Al-Anbiya", suraNameAR: "الأنبياء", suraVerses: "112"),
    RecentData(suraNameEN: "Al-Hajj", suraNameAR: "الحج", suraVerses: "78"),
    RecentData(
        suraNameEN: "Al-Mu'minun", suraNameAR: "المؤمنون", suraVerses: "118"),
    RecentData(suraNameEN: "An-Nur", suraNameAR: "النّور", suraVerses: "64"),
    RecentData(
        suraNameEN: "Al-Furqan", suraNameAR: "الفرقان", suraVerses: "77"),
    RecentData(
        suraNameEN: "Ash-Shu'ara", suraNameAR: "الشعراء", suraVerses: "227"),
    RecentData(suraNameEN: "An-Naml", suraNameAR: "النّمل", suraVerses: "93"),
    RecentData(suraNameEN: "Al-Qasas", suraNameAR: "القصص", suraVerses: "88"),
    RecentData(
        suraNameEN: "Al-Ankabut", suraNameAR: "العنكبوت", suraVerses: "69"),
    RecentData(suraNameEN: "Ar-Rum", suraNameAR: "الرّوم", suraVerses: "60"),
    RecentData(suraNameEN: "Luqman", suraNameAR: "لقمان", suraVerses: "34"),
    RecentData(suraNameEN: "As-Sajda", suraNameAR: "السجدة", suraVerses: "30"),
    RecentData(suraNameEN: "Al-Ahzab", suraNameAR: "الأحزاب", suraVerses: "73"),
    RecentData(suraNameEN: "Saba", suraNameAR: "سبأ", suraVerses: "54"),
    RecentData(suraNameEN: "Fatir", suraNameAR: "فاطر", suraVerses: "45"),
    RecentData(suraNameEN: "Ya-Sin", suraNameAR: "يس", suraVerses: "83"),
    RecentData(
        suraNameEN: "As-Saffat", suraNameAR: "الصافات", suraVerses: "182"),
    RecentData(suraNameEN: "Sad", suraNameAR: "ص", suraVerses: "88"),
    RecentData(suraNameEN: "Az-Zumar", suraNameAR: "الزمر", suraVerses: "75"),
    RecentData(suraNameEN: "Ghafir", suraNameAR: "غافر", suraVerses: "85"),
    RecentData(suraNameEN: "Fussilat", suraNameAR: "فصّلت", suraVerses: "54"),
    RecentData(suraNameEN: "Ash-Shura", suraNameAR: "الشورى", suraVerses: "53"),
    RecentData(
        suraNameEN: "Az-Zukhruf", suraNameAR: "الزخرف", suraVerses: "89"),
    RecentData(
        suraNameEN: "Ad-Dukhan", suraNameAR: "الدّخان", suraVerses: "59"),
    RecentData(
        suraNameEN: "Al-Jathiya", suraNameAR: "الجاثية", suraVerses: "37"),
    RecentData(suraNameEN: "Al-Ahqaf", suraNameAR: "الأحقاف", suraVerses: "35"),
    RecentData(suraNameEN: "Muhammad", suraNameAR: "محمد", suraVerses: "38"),
    RecentData(suraNameEN: "Al-Fath", suraNameAR: "الفتح", suraVerses: "29"),
    RecentData(
        suraNameEN: "Al-Hujurat", suraNameAR: "الحجرات", suraVerses: "18"),
    RecentData(suraNameEN: "Qaf", suraNameAR: "ق", suraVerses: "45"),
    RecentData(
        suraNameEN: "Adh-Dhariyat", suraNameAR: "الذاريات", suraVerses: "60"),
    RecentData(suraNameEN: "At-Tur", suraNameAR: "الطور", suraVerses: "49"),
    RecentData(suraNameEN: "An-Najm", suraNameAR: "النجم", suraVerses: "62"),
    RecentData(suraNameEN: "Al-Qamar", suraNameAR: "القمر", suraVerses: "55"),
    RecentData(suraNameEN: "Ar-Rahman", suraNameAR: "الرحمن", suraVerses: "78"),
    RecentData(
        suraNameEN: "Al-Waqi'a", suraNameAR: "الواقعة", suraVerses: "96"),
    RecentData(suraNameEN: "Al-Hadid", suraNameAR: "الحديد", suraVerses: "29"),
    RecentData(
        suraNameEN: "Al-Mujadila", suraNameAR: "المجادلة", suraVerses: "22"),
    RecentData(suraNameEN: "Al-Hashr", suraNameAR: "الحشر", suraVerses: "24"),
    RecentData(
        suraNameEN: "Al-Mumtahina", suraNameAR: "الممتحنة", suraVerses: "13"),
    RecentData(suraNameEN: "As-Saff", suraNameAR: "الصف", suraVerses: "14"),
    RecentData(suraNameEN: "Al-Jumu'a", suraNameAR: "الجمعة", suraVerses: "11"),
    RecentData(
        suraNameEN: "Al-Munafiqun", suraNameAR: "المنافقون", suraVerses: "11"),
    RecentData(
        suraNameEN: "At-Taghabun", suraNameAR: "التغابن", suraVerses: "18"),
    RecentData(suraNameEN: "At-Talaq", suraNameAR: "الطلاق", suraVerses: "12"),
    RecentData(
        suraNameEN: "At-Tahrim", suraNameAR: "التحريم", suraVerses: "12"),
    RecentData(suraNameEN: "Al-Mulk", suraNameAR: "الملك", suraVerses: "30"),
    RecentData(suraNameEN: "Al-Qalam", suraNameAR: "القلم", suraVerses: "52"),
    RecentData(suraNameEN: "Al-Haqqah", suraNameAR: "الحاقة", suraVerses: "52"),
    RecentData(
        suraNameEN: "Al-Ma'arij", suraNameAR: "المعارج", suraVerses: "44"),
    RecentData(suraNameEN: "Nuh", suraNameAR: "نوح", suraVerses: "28"),
    RecentData(suraNameEN: "Al-Jinn", suraNameAR: "الجن", suraVerses: "28"),
    RecentData(
        suraNameEN: "Al-Muzzammil", suraNameAR: "المزّمّل", suraVerses: "20"),
    RecentData(
        suraNameEN: "Al-Muddathir", suraNameAR: "المدّثر", suraVerses: "56"),
    RecentData(
        suraNameEN: "Al-Qiyamah", suraNameAR: "القيامة", suraVerses: "40"),
    RecentData(suraNameEN: "Al-Insan", suraNameAR: "الإنسان", suraVerses: "31"),
    RecentData(
        suraNameEN: "Al-Mursalat", suraNameAR: "المرسلات", suraVerses: "50"),
    RecentData(suraNameEN: "An-Naba'", suraNameAR: "النبأ", suraVerses: "40"),
    RecentData(
        suraNameEN: "An-Nazi'at", suraNameAR: "النازعات", suraVerses: "46"),
    RecentData(suraNameEN: "Abasa", suraNameAR: "عبس", suraVerses: "42"),
    RecentData(
        suraNameEN: "At-Takwir", suraNameAR: "التكوير", suraVerses: "29"),
    RecentData(
        suraNameEN: "Al-Infitar", suraNameAR: "الإنفطار", suraVerses: "19"),
    RecentData(
        suraNameEN: "Al-Mutaffifin", suraNameAR: "المطفّفين", suraVerses: "36"),
    RecentData(
        suraNameEN: "Al-Inshiqaq", suraNameAR: "الإنشقاق", suraVerses: "25"),
    RecentData(suraNameEN: "Al-Buruj", suraNameAR: "البروج", suraVerses: "22"),
    RecentData(suraNameEN: "At-Tariq", suraNameAR: "الطارق", suraVerses: "17"),
    RecentData(suraNameEN: "Al-A'la", suraNameAR: "الأعلى", suraVerses: "19"),
    RecentData(
        suraNameEN: "Al-Ghashiyah", suraNameAR: "الغاشية", suraVerses: "26"),
    RecentData(suraNameEN: "Al-Fajr", suraNameAR: "الفجر", suraVerses: "30"),
    RecentData(suraNameEN: "Al-Balad", suraNameAR: "البلد", suraVerses: "20"),
    RecentData(suraNameEN: "Ash-Shams", suraNameAR: "الشمس", suraVerses: "15"),
    RecentData(suraNameEN: "Al-Lail", suraNameAR: "الليل", suraVerses: "21"),
    RecentData(suraNameEN: "Ad-Duha", suraNameAR: "الضحى", suraVerses: "11"),
    RecentData(suraNameEN: "Ash-Sharh", suraNameAR: "الشرح", suraVerses: "8"),
    RecentData(suraNameEN: "At-Tin", suraNameAR: "التين", suraVerses: "8"),
    RecentData(suraNameEN: "Al-Alaq", suraNameAR: "العلق", suraVerses: "19"),
    RecentData(suraNameEN: "Al-Qadr", suraNameAR: "القدر", suraVerses: "5"),
    RecentData(suraNameEN: "Al-Bayyina", suraNameAR: "البينة", suraVerses: "8"),
    RecentData(
        suraNameEN: "Az-Zalzalah", suraNameAR: "الزلزلة", suraVerses: "8"),
    RecentData(
        suraNameEN: "Al-Adiyat", suraNameAR: "العاديات", suraVerses: "11"),
    RecentData(suraNameEN: "Al-Qari'a", suraNameAR: "القارعة", suraVerses: "8"),
    RecentData(
        suraNameEN: "At-Takathur", suraNameAR: "التكاثر", suraVerses: "3"),
    RecentData(suraNameEN: "Al-Asr", suraNameAR: "العصر", suraVerses: "9"),
    RecentData(suraNameEN: "Al-Humazah", suraNameAR: "الهمزة", suraVerses: "5"),
    RecentData(suraNameEN: "Al-Fil", suraNameAR: "الفيل", suraVerses: "4"),
    RecentData(suraNameEN: "Quraysh", suraNameAR: "قريش", suraVerses: "6"),
    RecentData(suraNameEN: "Al-Ma'un", suraNameAR: "الماعون", suraVerses: "3"),
    RecentData(suraNameEN: "Al-Kawthar", suraNameAR: "الكوثر", suraVerses: "6"),
    RecentData(
        suraNameEN: "Al-Kafirun", suraNameAR: "الكافرون", suraVerses: "3"),
    RecentData(suraNameEN: "An-Nasr", suraNameAR: "النصر", suraVerses: "5"),
    RecentData(suraNameEN: "Al-Masad", suraNameAR: "المسد", suraVerses: "4"),
    RecentData(suraNameEN: "Al-Ikhlas", suraNameAR: "الإخلاص", suraVerses: "5"),
    RecentData(suraNameEN: "Al-Falaq", suraNameAR: "الفلق", suraVerses: "4"),
    RecentData(suraNameEN: "An-Nas", suraNameAR: "الناس", suraVerses: "5"),
  ];

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Stack(
                  children: [
                    Center(
                        child: Image.asset(
                      "assets/splash/Mosque.png",
                      width: 300,
                    )),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 60),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            "assets/splash/Islami.png",
                            width: 150,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  cursorColor: appColors.primary,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Sura Name",
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
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
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Most Recently",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
                padding: EdgeInsets.only(left: 10,top: 20),
                child: Text(
                  "Suras List",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => SuraCardWidget(
                  recentData: recentData[index],
                  index: "${index+1}",
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
      ),
    );
  }
}
