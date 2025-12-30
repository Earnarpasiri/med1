import 'package:flutter/material.dart';
import '../type_page/type_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),

            // ================= TOP BAR (BACK + LOGO CENTER) =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset('assets/images/back.png', height: 28),
                  ),
                  Image.asset('assets/images/logo.jpeg', height: 70),
                  const SizedBox(width: 28), // ช่องว่างสมดุลเพื่อให้ Logo อยู่กลาง
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ================= TITLE =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset('assets/images/menu.png', height: 28),
                  const SizedBox(width: 10),
                  const Text(
                    'categories',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // ================= BUTTONS =================
            CategoryButton(
              text: 'household medicine',
              color: const Color(0xFF7ED957),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const TypeScreen()));
              },
            ),
            const SizedBox(height: 16),
            CategoryButton(
              text: 'dangerous drug',
              color: const Color(0xFFFF4B4B),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const TypeScreen()));
              },
            ),
            const SizedBox(height: 16),
            CategoryButton(
              text: 'special-controlled drug',
              color: const Color(0xFFFFC83D),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const TypeScreen()));
              },
            ),

            // ลบแถบ Bottom Nav ออกแล้ว พื้นที่ด้านล่างจะว่างเปล่า
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;

  const CategoryButton({super.key, required this.text, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}