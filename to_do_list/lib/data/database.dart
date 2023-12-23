import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  //refrence the box
  final _myBox = Hive.box('myBox');

  //default entries
  void createInitialData() {
    toDoList = [
      ['Workout', false],
      ['Get a job', false],
    ];
  }

  //load the data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
