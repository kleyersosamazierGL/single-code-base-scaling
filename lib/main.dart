import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets_app/core/theme/app_theme.dart';
import 'package:pets_app/presentation/views/home/home_view.dart';
import 'package:pets_app/presentation/views/login/login_view.dart';

void main() => runApp(const PetsApp());

class PetsApp extends StatelessWidget {
  const PetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData(),
      themeMode: ThemeMode.light,
      title: 'Pets App',
      home: const LoginView(),
    );
  }
}
