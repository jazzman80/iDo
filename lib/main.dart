import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ido/screens/tasks_screen.dart';
import 'package:ido/theme.dart';
import 'package:provider/provider.dart';
import 'models/business_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => BusinessModel(),
      child: DevicePreview(
        enabled: false,
        builder: (context) => const IdoApp(),
      ),
    ),
  );
}

class IdoApp extends StatelessWidget {
  const IdoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: appTheme(),
      home: const TasksScreen(),
    );
  }
}
