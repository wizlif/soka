import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:kapira/core/router.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: KapiraTheme.dark,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    );
  }
}
