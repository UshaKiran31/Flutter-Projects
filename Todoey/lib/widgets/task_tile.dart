import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key, this.isChecked, this.taskTitle, this.checkboxCallback});

  final bool? isChecked;
  final String? taskTitle;
  final Function(bool?)? checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle ?? '',
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

// class TaskTile extends StatefulWidget {
//   const TaskTile({super.key});

//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool? isChecked = false;

  // void checkboxCallback(bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });
//   }

//   @override
//   Widget build(BuildContext context) {
    // return ListTile(
    //   title: Text(
    //     'This is the task',
    //     style: TextStyle(
    //       decoration: isChecked! ? TextDecoration.lineThrough : null,
    //     ),
    //   ),
    //   trailing: TaskCheckbox(
    //     checkboxState: isChecked!,
    //     toggleCheckboxState: checkboxCallback,
    //   ),
    // );
//   }
// }



// class TaskCheckbox extends StatelessWidget {
//   const TaskCheckbox({
//     super.key,
//     required this.checkboxState,
//     required this.toggleCheckboxState,
//   });

//   final bool checkboxState;
//   final Function(bool?)? toggleCheckboxState;

//   @override
//   Widget build(BuildContext context) {
    // return Checkbox(
    //   activeColor: Colors.lightBlueAccent,
    //   value: checkboxState,
    //   onChanged: toggleCheckboxState ,
    // );
//   }
// }