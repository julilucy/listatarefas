// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homecontroller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$taskListAtom =
      Atom(name: 'HomeControllerBase.taskList', context: context);

  @override
  ObservableList<Task> get taskList {
    _$taskListAtom.reportRead();
    return super.taskList;
  }

  @override
  set taskList(ObservableList<Task> value) {
    _$taskListAtom.reportWrite(value, super.taskList, () {
      super.taskList = value;
    });
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  void resolveTask(Task task) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.resolveTask');
    try {
      return super.resolveTask(task);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void add(String title) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.add');
    try {
      return super.add(title);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.clear');
    try {
      return super.clear();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
taskList: ${taskList}
    ''';
  }
}
