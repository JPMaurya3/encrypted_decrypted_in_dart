/*A hash code is a single integer which represents the state of the object that affects operator == comparisons */
/*the state of an object refers to the values of its instance variables or properties at a particular point in time*/
/*hash codes generate an index to store values */
/*hashing is used to index and retrieve information
 from a database because it helps accelerate the process; 
 it is much easier to find an item using its shorter hashed
  key than its original value.*/
class Todo {
  String todo = "";
  int priority = 0;
}

void main() {
  Todo todo = Todo();
  print(todo.hashCode);
  print(todo.priority);
  print("the value of todo:${todo.todo}");
  print("the value of priority:${todo.priority}");
}
