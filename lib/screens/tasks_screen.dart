import 'package:flutter/material.dart';
import 'package:ido/task_screen_widgets/action_button.dart';
import 'package:ido/task_screen_widgets/title_icon.dart';
import 'package:ido/task_screen_widgets/title_text.dart';
import 'package:ido/task_screen_widgets/tasks_count_text.dart';
import 'package:ido/task_screen_widgets/task_list_view.dart';
import 'package:ido/task_screen_widgets/clear_completed_button.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      floatingActionButton: const ActionButton(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            TitleIcon(),
            TitleText(),
            TasksCountText(),
            ClearCompletedButton(),
            TaskListView(),
          ],
        ),
      ),
    );
  }
}
