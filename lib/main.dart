import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ido/screens/tasks_screen.dart';
import 'package:ido/theme.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => IdoApp(),
      ),
    );

class IdoApp extends StatelessWidget {
  const IdoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(),
      home: TasksScreen(),
    );
  }
}
