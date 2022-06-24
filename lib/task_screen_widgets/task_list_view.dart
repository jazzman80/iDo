import 'package:flutter/material.dart';
import 'package:ido/models/business_model.dart';
import 'package:provider/provider.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BusinessModel>(
      builder: (context, businessModel, child) {
        return Expanded(
          child: Container(
            padding: const EdgeInsets.only(
              left: 50.0,
              right: 50.0,
              top: 20.0,
              bottom: 0.0,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return TaskItem(
                  task: businessModel.getTask(index),
                );
              },
              itemCount: businessModel.taskCount,
            ),
          ),
        );
      },
    );
  }
}

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        task.taskName,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
            decoration: task.isComplete
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      value: task.isComplete,
      onChanged: (value) {
        Provider.of<BusinessModel>(context, listen: false).checkTask(task);
      },
      checkboxShape: const CircleBorder(),
      activeColor: Theme.of(context).colorScheme.primary,
      contentPadding: const EdgeInsets.all(0.0),
    );
  }
}
