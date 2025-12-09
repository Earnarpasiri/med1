import 'package:flutter/material.dart';
import '../home_page/home_screen.dart';

 // เส้นทางไปยัง home_screen.dart

const String _logoPath = 'assets/images/logo.jpeg';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // ------- โลโก้อยู่กลาง -------
            Expanded(
              child: Center(
                child: Image.asset(
                  _logoPath,
                  height: 300,
                  width: 290,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // ------- ปุ่มอยู่ตรงกลางด้านล่าง -------
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 150,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E8142),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "NEXT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
