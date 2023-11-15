import 'package:flutter/material.dart';
import 'package:project_1/Page/login.dart';
import 'package:project_1/page/dashboard.dart';
import 'package:project_1/page/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/dashboard': (context) => const Dashboard(
              String: null,
              email: '',
            ),
        '/login': (context) => const Login(),
        '/product': (context) => const Product(),
      },
      title: 'Project 1',
      theme: ThemeData(
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const Dashboard(
        email: '',
        String: null,
      ),
    );
  }
}
