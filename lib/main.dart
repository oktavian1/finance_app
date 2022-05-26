import 'package:flutter/material.dart';
import 'package:mobile_finance/theme.dart';
import 'package:mobile_finance/ui/pages/getstarted/get_started.dart';
import 'package:mobile_finance/ui/pages/login/login_page.dart';
import 'package:mobile_finance/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const LoginScreen(),
        // '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStarted(),
      },
    );
  }
}
