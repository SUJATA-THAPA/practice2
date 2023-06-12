class Todo {
  final String title;
  final String description;
  bool done;
  Todo({
    required this.title,
    required this.description,
    this.done = false,
  });
}
