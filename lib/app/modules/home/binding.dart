import 'package:get/get.dart';
import 'package:workout_diary/app/data/providers/task/provider.dart';
import 'package:workout_diary/app/data/services/storage/repository.dart';
import 'package:workout_diary/app/modules/home/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
