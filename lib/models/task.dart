class Task {
  bool isDone;
  final String title;
  final DateTime date;

  Task({
    required this.title,
    required this.date,
    this.isDone = false,
  });
}
