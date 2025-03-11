import 'package:flutter/material.dart';
import 'package:login/auth/login.dart';
import 'package:login/components/routes.dart';

void main() {
  runApp(MaterialApp(
    home: const LoginPage(),
    routes: routesPages,
    debugShowCheckedModeBanner: false,
    initialRoute: LoginPage.mainRoutes,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: null,
    );
  }
}
