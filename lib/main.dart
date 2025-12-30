import 'package:flutter/material.dart';

// first page
import 'package:med2/first_page/welcome_screen.dart';

// home page
import 'package:med2/home_page/home_screen.dart';

// categories page
import 'package:med2/categories_page/categories_screen.dart';

// type page
import 'package:med2/type_page/type_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PharmaFind',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),

      // 🔰 หน้าแรกของแอป
      initialRoute: '/welcome',

      // 🧭 routes ทั้งหมดของแอป
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
        '/categories': (context) => const CategoriesScreen(),
        '/type': (context) => const TypeScreen(),
      },
    );
  }
}
