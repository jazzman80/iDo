import 'package:flutter/material.dart';
import 'package:ido/screens/add_task_screen.dart';

class TaskNameInput extends StatelessWidget {
  const TaskNameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 60.0,
      ),
      child: TextField(
        autofocus: true,
        controller: textController,
      ),
    );
  }
}
