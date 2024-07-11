import 'package:flutter/material.dart';
import '../models/novel.dart';

class NovelProvider with ChangeNotifier {
  Novel _novel = Novel(
    title: '庆余年',
    description: '《庆余年》是一部由猫腻所著的架空历史小说，讲述了现代人范闲穿越到古代的故事。',
    chapters: [
      Chapter(title: '第一章', content: '这是第一章的内容。'),
      Chapter(title: '第二章', content: '这是第二章的内容。'),
      // Add more chapters here
    ],
  );

  Novel get novel => _novel;

  Chapter getChapter(int index) => _novel.chapters[index];
}
