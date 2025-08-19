import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening the app
  void createInitialData() {
    toDoList = [
      ["Water plants", false],
      ["Go to the gym", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

//update the database
  void updateDatabase() {
  _myBox.put("TODOLIST", toDoList);
  }

}