import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/novel_provider.dart';
import 'screens/home_screen.dart';
import 'screens/chapter_screen.dart';

void main() {
  runApp(NovelSimulatorApp());
}

class NovelSimulatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NovelProvider(),
      child: MaterialApp(
        title: 'Novel Simulator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
        routes: {
          ChapterScreen.routeName: (context) => ChapterScreen(),
        },
      ),
    );
  }
}
