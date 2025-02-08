import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../sources/button.dart';
import '../sources/background.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                      Text(
                        "Belajar Kata",
                        style: GoogleFonts.kavoon(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 3
                              ..color = Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(0, 10),
                                blurRadius: 4,
                              )
                            ]),
                      ),
                      Text(
                        "Belajar Kata",
                        style: GoogleFonts.kavoon(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff708BB7),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Text(
                        "Benda",
                        style: GoogleFonts.kavoon(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 3
                              ..color = Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(0, 10),
                                blurRadius: 4,
                              )
                            ]),
                      ),
                      Text(
                        "Benda",
                        style: GoogleFonts.kavoon(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff73AA67),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //#Setting Button
          Positioned(
            top: 30,
            left: 20,
            child: IconButtonWidget(
                strokeColor: Colors.white,
                strokeWidth: 0,
                icon: Icons.settings,
                backgroundColor: Colors.yellow,
                size: 20,
                onPressed: () {
                  Navigator.pushNamed(context, '/story_board');
                }),
          ),
          //#Volume Button
          Positioned(
            top: 100,
            left: 20,
            child: IconButtonWidget(
                strokeColor: Colors.white,
                strokeWidth: 0,
                icon: Icons.volume_up,
                backgroundColor: Colors.purple,
                size: 20,
                onPressed: () {
                  print("ngentot");
                }),
          ),
          //#Play Button
          Positioned(
            bottom: 40,
            right: 270,
            child: IconButtonWidget(
                strokeColor: Colors.white,
                strokeWidth: 3,
                icon: Icons.play_arrow,
                backgroundColor: Colors.red,
                size: 90,
                onPressed: () {
                  print("ngentot");
                }),
          ),
          //#StoryBoard Button
          Positioned(
            bottom: 40,
            left: 270,
            child: IconButtonWidget(
                strokeColor: Colors.white,
                strokeWidth: 3,
                icon: Icons.menu_book_outlined,
                backgroundColor: Colors.blue,
                size: 90,
                onPressed: () {
                  Navigator.pushNamed(context, '/story_board');
                }),
          ),
        ],
      )),
    );
  }
}
