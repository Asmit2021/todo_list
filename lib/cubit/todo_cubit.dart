import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/model/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void add(String name) {
    final todo = Todo(
      name: name,
      createdAt: DateTime.now(),
    );

    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }
}
