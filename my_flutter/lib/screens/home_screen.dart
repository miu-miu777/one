import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/novel_provider.dart';
import 'chapter_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final novel = Provider.of<NovelProvider>(context).novel;

    return Scaffold(
      appBar: AppBar(
        title: Text(novel.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              novel.description,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: novel.chapters.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(novel.chapters[index].title),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        ChapterScreen.routeName,
                        arguments: index,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
