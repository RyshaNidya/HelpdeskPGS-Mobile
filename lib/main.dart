import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:helpdeskpgs_mobile/presentation/dashboard.dart';
import 'package:helpdeskpgs_mobile/provider/pengaduan_provider.dart';
import 'package:helpdeskpgs_mobile/presentation/auth/login.dart';
import 'package:helpdeskpgs_mobile/presentation/splash_screen/splash.dart';
import 'package:helpdeskpgs_mobile/widgets/teks.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => PengaduanProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'M-Helpdesk',
      theme: ThemeData(primaryColor: mainHijau, useMaterial3: true),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => BerandaPage(),
      },
    );
  }
}
