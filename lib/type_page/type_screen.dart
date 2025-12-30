import 'package:flutter/material.dart';

class TypeScreen extends StatelessWidget {
  const TypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),

            // ================= TOP BAR (LOGO CENTERED) =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ปุ่มย้อนกลับ (อยู่ชิดซ้าย)
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/back.png',
                      height: 28,
                    ),
                  ),

                  // โลโก้ (จะถูกดันมาอยู่ตรงกลาง)
                  Image.asset(
                    'assets/images/logo.jpeg',
                    height: 70,
                  ),

                  // ส่วน Dummy (กว้าง 28 เท่ากับปุ่ม Back) เพื่อให้ Logo อยู่กลางเป๊ะ
                  const SizedBox(width: 28),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // ================= TITLE =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/type.png',
                    height: 30,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'type',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // ================= GRID =================
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 1,
                  children: const [
                    TypeCard(
                      title: 'Liquid medicine\n/Oral liquid',
                      image: 'assets/images/liquid.png',
                      bgColor: Color(0xFFEFFFFB),
                    ),
                    TypeCard(
                      title: 'Tablet',
                      image: 'assets/images/tablet.png',
                      bgColor: Color(0xFFF6EFFF),
                    ),
                    TypeCard(
                      title: 'Powder',
                      image: 'assets/images/powder.png',
                      bgColor: Color(0xFFFFF6D8),
                    ),
                    TypeCard(
                      title: 'Lozenge',
                      image: 'assets/images/lozenge.png',
                      bgColor: Color(0xFFFFEAEA),
                    ),
                    TypeCard(
                      title: 'Spray',
                      image: 'assets/images/spray.png',
                      bgColor: Color(0xFFEFFFE9),
                    ),
                    TypeCard(
                      title: 'Injection',
                      image: 'assets/images/injection.png',
                      bgColor: Color(0xFFF1EEFF),
                    ),
                    TypeCard(
                      title: 'Topical medication\n/Ointment /Cream',
                      image: 'assets/images/ointment.png',
                      bgColor: Color(0xFFE0E0E0),
                    ),
                    TypeCard(
                      title: 'Suppository',
                      image: 'assets/images/suppositories.png',
                      bgColor: Color(0xFFFFEBD6),
                    ),
                    TypeCard(
                      title: 'Capsule',
                      image: 'assets/images/capsules2.png',
                      bgColor: Color(0xFFE7F6EF),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= COMPONENTS (TypeCard) =================
class TypeCard extends StatelessWidget {
  final String title;
  final String image;
  final Color bgColor;

  const TypeCard({
    super.key,
    required this.title,
    required this.image,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 60,
          ),
          const SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}