class Task {
  final String? name;
  final String? title;
  bool isCompleted;

  Task({this.name, this.title, this.isCompleted = false});

  @override
  String toString() {
    return '$name, $title, $isCompleted';
  }
}
