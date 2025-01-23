import 'package:flutter/material.dart';
import 'config/routers/router.dart';
import 'package:fluro/fluro.dart';
import './widgets/main_layout.dart';

void main() {
  AppRouter.defineRouters();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.router.generator,
      initialRoute: '/login',
      home: MainLayout(),
    );
  }
}