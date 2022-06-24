import 'package:flutter/material.dart';
import 'package:ido/models/business_model.dart';
import 'package:provider/provider.dart';

class TasksCountText extends StatelessWidget {
  const TasksCountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tasksCount = Provider.of<BusinessModel>(context).taskCount;

    return Padding(
      padding: const EdgeInsets.only(
        left: 60.0,
        right: 60.0,
        top: 5.0,
      ),
      child: Text(
        tasksCount == 1 ? '1 task' : '$tasksCount tasks',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}
