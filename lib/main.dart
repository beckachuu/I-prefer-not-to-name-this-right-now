import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'Controller/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialApp.router(routerConfig: GoRouter(routes: []));

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}