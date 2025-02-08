import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sources/button.dart';
import 'sources/background.dart';

class StoryBoard extends StatelessWidget {
  const StoryBoard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 20,
              child: IconButtonWidget(
                  strokeColor: Colors.white,
                  strokeWidth: 0,
                  icon: Icons.arrow_back,
                  backgroundColor: Colors.red,
                  size: 20,
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  }),
            ),
            Positioned(
              bottom: 30,
              right: 20,
              child: IconButtonWidget(
                  strokeColor: Colors.white,
                  strokeWidth: 0,
                  icon: Icons.arrow_forward,
                  backgroundColor: Colors.red,
                  size: 20,
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  }),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(16),
                width: 700,
                height: 800,
                decoration: BoxDecoration(
                  color: Colors.white
                      .withOpacity(0.7), // Warna dengan transparansi
                  borderRadius: BorderRadius.circular(20), // Sudut melengkung
                ),
                child: Text(
                  'Story Board',
                  style: GoogleFonts.kavoon(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff8088B3),
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
