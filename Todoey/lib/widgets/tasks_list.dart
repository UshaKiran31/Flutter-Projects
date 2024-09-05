import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key, this.tasks});

  final List<Task>? tasks;
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks![index].name,
          isChecked: widget.tasks![index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks![index].togglrDone();
            });
          },
        );
      },
      itemCount: widget.tasks!.length,
    );
  }
}
