import 'dart:html';
import 'package:firebase/firebase.dart';
import 'package:angular/angular.dart';

OListElement todoList = (querySelector('#todoList') as OListElement);
ButtomElement save = (querySelector('#saveButton') as ButtonElement);

@N

main() => ngBootstrap();




void mainOld() {

  querySelector('#todoListTitle').text = 'Hello World!';

  querySelector('#addButton').onClick.listen(onAdd);
  querySelector('#clearButton').onClick.listen(onClear);
  save.onClick.listen(saveF);

}

void onAdd(Event e) {
  var todoTextInputElement = querySelector('#todoTitle') as InputElement;
  var todoTitleText = todoTextInputElement.value;
  if (!todoTitleText.trim().isEmpty) {
    addTodo(todoTitleText);
    todoTextInputElement.value = '';
  }


}

void addTodo(String title) {
  var itemDiv = new DivElement();
  var liElement = new LIElement();

  liElement.text = title;

  var buttonElement = new ButtonElement();
  buttonElement.text = "delete";
  buttonElement.onClick.listen(deleteItem);

  itemDiv.children.add(liElement);
  itemDiv.children.add(buttonElement);

  todoList.children.add(itemDiv);
}

void onClear(Event e) {
  todoList.children.clear();
}

void deleteItem(Event e) {
  var btn = e.target as ButtonElement;
  btn.parent.remove();
}

void saveF(Event e) {

  print('save clicked');
}

class TodoItem {
  String _title;
}