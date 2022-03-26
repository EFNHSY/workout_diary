import 'dart:convert';

import 'package:get/get.dart';
import 'package:workout_diary/app/core/utils/keys.dart';
import 'package:workout_diary/app/data/services/storage/services.dart';

import '../../models/task.dart';


class TaskProvider {
  StorageService storage = Get.find<StorageService>();

  List<Task> readTasks() {
    var tasks = <Task>[];
    jsonDecode(storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    storage.write(taskKey, jsonEncode(tasks));
  }
}

