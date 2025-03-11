import 'package:flutter/material.dart';
import 'package:login/auth/body/body_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String mainRoutes = "Login States";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: const BodyLogin(),
    );
  }
}