import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'router/app_routes.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ChaptersApp(),
    ),
  );
}

class ChaptersApp extends StatelessWidget {
  const ChaptersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Chapters",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: goRouter,
    );
  }
}