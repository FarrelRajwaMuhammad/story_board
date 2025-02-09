import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:story_board/firebase_options.dart';
import 'page/home.dart';
import 'page/story_board.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,
  );

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((_) {
    runApp(const MyApp());
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
