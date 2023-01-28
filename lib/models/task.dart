class Task {
  bool isDone;
  final String id;
  final String title;
  final DateTime date;

  Task({
    required this.id,
    required this.title,
    required this.date,
    this.isDone = false,
  });
}
