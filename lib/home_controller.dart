import 'package:ignite_flutter_todo_list/shared/models/todo_item.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<ToDoItem> _toDoItemList = ObservableList<ToDoItem>();

  @observable
  ObservableList<ToDoItem> _doneItemList = ObservableList<ToDoItem>();

  ObservableList<ToDoItem> get toDoItemList => _toDoItemList;
  ObservableList<ToDoItem> get doneItemList => _doneItemList;

  @action
  void onAddItem(String itemTitle) {
    _toDoItemList.add(
      ToDoItem(
        title: itemTitle,
      ),
    );
  }

  @action
  void onResetItem(ToDoItem item) {
    _doneItemList.remove(item);

    _toDoItemList.add(
      ToDoItem(
        title: item.title,
      ),
    );
  }

  @action
  void onRemoveToDoItem(ToDoItem item) {
    _toDoItemList.remove(item);
  }

  @action
  void onRemoveDoneItem(ToDoItem item) {
    _doneItemList.remove(item);
  }

  @action
  void onCompleteItem(ToDoItem item) {
    _toDoItemList.remove(item);

    _doneItemList.add(ToDoItem(
      title: item.title,
      isDone: true,
    ));
  }
}
