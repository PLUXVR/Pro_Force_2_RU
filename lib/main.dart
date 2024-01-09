import 'package:flutter/material.dart';
import 'package:pro_force2_ru/widgets/auth/auth_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pro Force 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            primary: Colors.yellow.shade400, seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: AuthWidget(),
    );
  }
}
