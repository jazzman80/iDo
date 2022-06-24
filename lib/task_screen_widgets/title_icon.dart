import 'package:flutter/material.dart';

class TitleIcon extends StatelessWidget {
  const TitleIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 60.0,
        right: 60.0,
        top: 70.0,
      ),
      child: CircleAvatar(
        radius: 40.0,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        child: Icon(
          Icons.list,
          color: Theme.of(context).colorScheme.primary,
          size: 60.0,
        ),
      ),
    );
  }
}
