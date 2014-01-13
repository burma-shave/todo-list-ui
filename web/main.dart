import 'dart:html';
import 'package:firebase/firebase.dart';
import 'package:angular/angular.dart';

@NgController(
  selector: '[todo-list]',
  publishAs: 'ctrl')
class TodoListController {

  List<TodoItem> todoItems;

  TodoListController() {
    todoItems = _loadTodos();
  }

  List<TodoItem> _loadTodos() {
    return [new TodoItem("Nothing todo"), new TodoItem("Still nothing todo")];
  }


  void addItem(String name) {
    todoItems.add(new TodoItem(name));
  }

}

class TodoItem {
  String title;

  TodoItem(this.title);
}

class TodoAppModule extends Module {
  TodoAppModule() {
    type(TodoListController);
  }
}

main() {
  ngBootstrap(module: new TodoAppModule());
}