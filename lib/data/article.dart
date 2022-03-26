class Article {
  final String title;
  final String imageUrl;
  final String date;
  final String? content;
  const Article(
      {required this.title,
      required this.date,
      required this.imageUrl,
      this.content});
}
