import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class BusinessModel extends ChangeNotifier {
  List<Task> _tasksList = [
    Task(taskName: 'Check this task'),
    Task(taskName: 'Add another one task'),
  ];

  BusinessModel() {
    loadData();
  }

  void addTask(String newTaskName) {
    _tasksList.add(
      Task(taskName: newTaskName),
    );
    notifyListeners();
    saveData();
  }

  void checkTask(Task taskToCheck) {
    Task task = _tasksList[_tasksList.indexOf(taskToCheck)];
    task.isComplete = !task.isComplete;
    notifyListeners();
    saveData();
  }

  void clearCompleted() {
    _tasksList.removeWhere((task) => task.isComplete == true);
    notifyListeners();
    saveData();
  }

  int get taskCount {
    return _tasksList.length;
  }

  Task getTask(int index) {
    return _tasksList[index];
  }

  void saveData() async {
    final file = await _localFile;
    String tasksListAsString = jsonEncode(_tasksList);
    await file.writeAsString(tasksListAsString);
  }

  void loadData() async {
    final file = await _localFile;
    final tasksListAsString = await file.readAsString();
    var tasksObjectsJson = jsonDecode(tasksListAsString) as List;
    _tasksList =
        tasksObjectsJson.map((taskJson) => Task.fromJson(taskJson)).toList();
    notifyListeners();
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/tasklist.dat');
  }
}

class Task {
  String taskName;
  bool isComplete;

  Task({
    required this.taskName,
    this.isComplete = false,
  });

  Map<String, dynamic> toJson() => {
        'taskName': taskName,
        'isDone': isComplete,
      };

  factory Task.fromJson(dynamic json) {
    return Task(
      taskName: json['taskName'] as String,
      isComplete: json['isDone'] as bool,
    );
  }
}
