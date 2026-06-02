import 'package:flutter/material.dart';
import 'package:helpdeskpgs_mobile/presentation/auth/login.dart';
import 'package:helpdeskpgs_mobile/widgets/teks.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance.addPostFrameCallback((_) {

    // });

    Future.delayed(const Duration(seconds: 3), () {
      cekLogin();
    });
  }

  void cekLogin() {
    // SEMENTARA (dummy)
    bool sudahLogin = false;

    if (!mounted) return;

    if (sudahLogin) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/logo.png', width: 180),
            Text(
              'Bantuanku: M-Helpdesk',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: teksHijau,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
