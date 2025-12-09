import 'package:flutter/material.dart';

// ต้องให้เส้นทางตรงกับโฟลเดอร์จริงใน lib/
// ถ้าโฟลเดอร์ชื่อ first_page และไฟล์ชื่อ welcome_screen.dart ถูกต้องแล้ว
import 'package:med2/first_page/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PharmaFind',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
