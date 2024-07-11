class Chapter {
  final String title;
  final String content;

  Chapter({required this.title, required this.content});
}

class Novel {
  final String title;
  final String description; // Add description field
  final List<Chapter> chapters;

  Novel({required this.title, required this.description, required this.chapters});
}
