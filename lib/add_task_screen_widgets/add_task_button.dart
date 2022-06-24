import 'package:flutter/material.dart';
import 'package:ido/models/business_model.dart';
import 'package:ido/screens/add_task_screen.dart';
import 'package:provider/provider.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BusinessModel>(
      builder: (context, businessModel, child) {
        return ElevatedButton(
          onPressed: () {
            businessModel.addTask(textController.text);
            textController.clear();
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: Text(
              'Add',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        );
      },
    );
  }
}
