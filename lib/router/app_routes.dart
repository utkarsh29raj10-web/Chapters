import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DummyScreen extends StatelessWidget {
  final String title;
  const DummyScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title)),
    );
  }
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DummyScreen(title: "Screen 1: Splash & Initialisation"),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const DummyScreen(title: "Screen 4: Home Dashboard"),
    ),
  ],
);