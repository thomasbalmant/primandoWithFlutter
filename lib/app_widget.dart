import 'package:flutter/material.dart';
import 'package:iniciando/app_controller.dart';
import 'package:iniciando/home_page.dart';
import 'package:iniciando/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.lightBlue,
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light),
          initialRoute: '/login',
          routes: {
            '/login': (context) => const LoginPage(),
            '/home': (context) => const HomePage()
          },
        );
      },
    );
  }
}
