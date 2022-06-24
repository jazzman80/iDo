import 'package:flutter/material.dart';
import 'package:ido/models/business_model.dart';
import 'package:provider/provider.dart';

class ClearCompletedButton extends StatelessWidget {
  const ClearCompletedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          bottom: 20.0,
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).colorScheme.onPrimary,
            onPrimary: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {
            Provider.of<BusinessModel>(context, listen: false).clearCompleted();
          },
          child: const Text(
            'Clear Completed',
          ),
        ),
      ),
    );
  }
}
