import 'package:flutter/material.dart';
import 'package:ido/add_task_screen_widgets/add_task_button.dart';
import 'package:ido/add_task_screen_widgets/task_name_input.dart';
import 'package:ido/add_task_screen_widgets/title_text.dart';

TextEditingController textController = TextEditingController();

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 40.0,
        horizontal: 60.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: const [
          TitleText(),
          TaskNameInput(),
          AddTaskButton(),
        ],
      ),
    );
  }
}
