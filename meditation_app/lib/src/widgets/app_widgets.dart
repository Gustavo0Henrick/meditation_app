import 'package:flutter/material.dart';
import 'package:meditation_app/src/modules/dashboard/dashboard_page.dart';
import 'package:meditation_app/src/modules/login/login_page.dart';
import 'package:meditation_app/src/modules/register/register_page.dart';
import 'package:meditation_app/src/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditation App Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/dashboard': (context) => const DashboardPage(),
      },
    );
  }
}
