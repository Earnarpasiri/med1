import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(height: 10),

            // ---------------- LOGO ----------------
            Center(
              child: Image.asset(
                'assets/images/logo.jpeg',
                height: 70,
              ),
            ),

            const SizedBox(height: 20),

            // ---------------- SCAN IMAGE + BUTTON ----------------
            Column(
              children: [
                Image.asset(
                  'assets/images/scan.png',
                  height: 170,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 15),

                ElevatedButton(
                  onPressed: () {
                    print("Scan Now pressed");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E8142),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: const Text(
                    "SCAN NOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // ---------------- PHOTO TIPS ----------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container( // ห่อด้วย Container เพื่อให้สีพื้นหลัง Tips Box ดูต่อเนื่อง
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F5E9), // ใช้สีเดียวกับ Tips Box
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/emergency.png',
                      height: 28,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "Photo Tips for Scanning Medicine",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ---------------- TIPS BOX ----------------
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TipItem(text: "Make sure the image is clear, not blurry."),
                  TipItem(text: "Focus on the medicine or packaging."),
                  TipItem(text: "Use good lighting (avoid shadowed areas)."),
                  TipItem(text: "Hold the camera steady while capturing."),
                ],
              ),
            ),

            const Spacer(),

            // ---------------- BOTTOM NAV ----------------
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: const Color(0xFFD5F2D8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/home.png',
                        height: 35,
                      ),
                      const Text(
                        "home",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/grid.png',
                        height: 35,
                      ),
                      const Text(
                        "categories",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TipItem extends StatelessWidget {
  final String text;

  const TipItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // เพื่อให้รูปภาพอยู่ด้านบนสุดของข้อความ
        children: [
          // ⚠️ แทนที่ Icon ด้วย Image.asset
          Image.asset(
            'assets/images/checkmark.png',
            height: 20, // กำหนดขนาดให้เหมาะสมตามภาพ
            width: 20,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, height: 1.3),
            ),
          ),
        ],
      ),
    );
  }
}