import 'package:flutter/material.dart';
class TodoList extends StatelessWidget {
  const TodoList({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext) deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 0,
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: Checkbox(
            value: taskCompleted,
            onChanged: onChanged,
            checkColor: Colors.black,
            activeColor: Colors.white,
            side: const BorderSide(
              color: Colors.white,
            ),
          ),
          title: Text(
            taskName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              decoration: taskCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              decorationColor: Colors.white,
              decorationThickness: 3,
            ),
          ),
          trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.black),
              // selectedIcon:,
              onPressed: () {
                deleteFunction(context);
              }),
        ),
      ),
    );
  }
}
