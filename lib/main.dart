import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'page/home.dart';
import 'page/story_board.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      initialRoute: '/',
      routes: {
        '/home': (context) => Home(),
        '/story_board': (context) => StoryBoard(),
      },
    );
  }
}
