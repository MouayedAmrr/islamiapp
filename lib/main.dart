import 'package:flutter/material.dart';
import 'package:islamiapp/core/services/local_storage_service.dart';
import 'package:islamiapp/splash/pages/animatedSplashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(),
    );
  }
}
