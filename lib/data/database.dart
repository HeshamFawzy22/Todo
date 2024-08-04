import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/util/constants.dart';

class ToDoDatabase{
  List todoList = [];

  // reference to box
  final _todoBox = Hive.box(TODOBOX);

  // create this method if this is the 1st time ever opening the app
  void createInitialData(){
    todoList = [
      [MAKE_NEW_TASK, false],
      [COMPLETE_TASKS, false],
    ];
  }

  // load data from database
  void loadData(){
    todoList = _todoBox.get(TODOLIST);
  }

  // update data from database
  void updateDatabase(){
    _todoBox.put(TODOLIST, todoList);
  }
}