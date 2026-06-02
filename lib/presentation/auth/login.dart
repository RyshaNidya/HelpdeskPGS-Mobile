import 'package:flutter/material.dart';
import 'package:helpdeskpgs_mobile/widgets/teks.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bantuanku: M-Helpdesk',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: mainHijau,
                ),
              ),
              const SizedBox(height: 15),

              //? Logo
              Image.asset('assets/img/logo.png', width: 160),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
