import 'package:flutter/material.dart';
import 'package:smart_save/src/core/config/theme/theme_data.dart';
import 'package:smart_save/src/features/auth/presentation/views/auth_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Save',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().darkTheme,
      home: const AuthView(),
    );
  }
}
