import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:listatarefas/src/model/tarefas.dart';
part 'homecontroller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  @observable
  ObservableList<Task> taskList = ObservableList<Task>();

  TextEditingController textEditingController = TextEditingController();

  @action
  void resolveTask(Task task) {
    task.isResolved = !task.isResolved;
  }

  @action
  void add(String title) {
    taskList.add(
      Task(title: title),
    );
  }

  @action
  void clear() {
    taskList.clear();
  }
}
