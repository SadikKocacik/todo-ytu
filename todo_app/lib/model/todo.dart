import 'package:todo_app/model/networking.dart';

NetworkHelper networkHelper = NetworkHelper();

class ToDo {
  String id;
  String? todoText;
  bool isDone;
  var data;
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });
  Future getTodoData() async {
    var todoData = await networkHelper.getData();
    data = todoData;
  }

  static List<ToDo> todoList() {
    return [];
  }
}
