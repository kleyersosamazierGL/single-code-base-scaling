import 'package:flutter/material.dart';
import 'package:pets_app/core/theme/app_theme.dart';
import 'package:pets_app/presentation/views/home/home_view.dart';
import 'package:pets_app/presentation/views/login/login_view.dart';
import 'package:pets_app/provider/pet_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const PetsApp());

class PetsApp extends StatelessWidget {
  const PetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PetProvider(),
        ),
      ],
      child: MaterialApp(
        theme: AppTheme.themeData(),
        themeMode: ThemeMode.light,
        title: 'Pets App',
        home: const HomeView(),
      ),
    );
  }
}
