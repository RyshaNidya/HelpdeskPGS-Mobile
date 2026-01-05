import 'package:flutter/material.dart';
import 'package:helpdeskpgs_mobile/pages/login.dart';
import 'package:helpdeskpgs_mobile/pages/splash.dart';
import 'package:helpdeskpgs_mobile/widgets/teks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M-Helpdesk',
      theme: ThemeData(
        primaryColor: mainHijau
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
