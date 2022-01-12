// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$_toDoItemListAtom = Atom(name: '_HomeControllerBase._toDoItemList');

  @override
  ObservableList<ToDoItem> get _toDoItemList {
    _$_toDoItemListAtom.reportRead();
    return super._toDoItemList;
  }

  @override
  set _toDoItemList(ObservableList<ToDoItem> value) {
    _$_toDoItemListAtom.reportWrite(value, super._toDoItemList, () {
      super._toDoItemList = value;
    });
  }

  final _$_doneItemListAtom = Atom(name: '_HomeControllerBase._doneItemList');

  @override
  ObservableList<ToDoItem> get _doneItemList {
    _$_doneItemListAtom.reportRead();
    return super._doneItemList;
  }

  @override
  set _doneItemList(ObservableList<ToDoItem> value) {
    _$_doneItemListAtom.reportWrite(value, super._doneItemList, () {
      super._doneItemList = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void onAddItem(String itemTitle) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onAddItem');
    try {
      return super.onAddItem(itemTitle);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onResetItem(ToDoItem item) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onResetItem');
    try {
      return super.onResetItem(item);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onRemoveToDoItem(ToDoItem item) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onRemoveToDoItem');
    try {
      return super.onRemoveToDoItem(item);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onRemoveDoneItem(ToDoItem item) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onRemoveDoneItem');
    try {
      return super.onRemoveDoneItem(item);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onCompleteItem(ToDoItem item) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.onCompleteItem');
    try {
      return super.onCompleteItem(item);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
