import 'package:flutter/material.dart';

void main() {
  runApp(const ChaptersApp());
}

class ChaptersApp extends StatelessWidget {
  const ChaptersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chapters",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text("Chapters Engine Initialized"),
        ),
      ),
    );
  }
}