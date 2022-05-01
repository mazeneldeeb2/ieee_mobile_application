class Course {
  final String title;
  final String imageUrl;
  final String? courseContent;
  final String? courseDescription;
  final String date;
  final int? id;
  Course({
    required this.id,
    required this.date,
    required this.title,
    required this.imageUrl,
    this.courseContent,
    this.courseDescription,
  });
}
