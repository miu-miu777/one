import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/novel_provider.dart';

class ChapterScreen extends StatelessWidget {
  static const routeName = '/chapter';

  @override
  Widget build(BuildContext context) {
    final int chapterIndex = ModalRoute.of(context)!.settings.arguments as int;
    final chapter = Provider.of<NovelProvider>(context).getChapter(chapterIndex);

    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(chapter.content),
      ),
    );
  }
}
