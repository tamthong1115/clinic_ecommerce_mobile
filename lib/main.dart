import 'package:flutter/material.dart';

import 'routes/app_router.dart';

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
    );
  }
}