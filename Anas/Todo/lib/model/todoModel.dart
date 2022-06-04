class Todo {
  DateTime createdTime;
  String title;
  String id;

  Todo({
    required this.createdTime,
    required this.title,
    this.id = '',
  });
}
