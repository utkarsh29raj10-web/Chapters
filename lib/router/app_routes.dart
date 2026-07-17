import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/app_theme.dart';

class DummyScreen extends ConsumerWidget {
  final String title;
  const DummyScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Chapters", style: Theme.of(context).textTheme.displaySmall),
            Text("Everything is Here.", style: Theme.of(context).textTheme.headlineLarge),
            Text("I feel like something ought to be done about this.", style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 30),

            Container (
              padding: const EdgeInsets.all(16),
              color: Theme.of(context).extension<AppColorsExtension>()!.surfaceAlt,
              child: const Text("Surface Alt container"),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () => themeNotifier.toggleDarkMode(),
              child: const Text("Toggle Light/Dark Mode"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => themeNotifier.setThemeType(AppThemeType.oceanBreeze),
              child: const Text("switch to Ocean Breeze"),
            ),

            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => themeNotifier.setThemeType(AppThemeType.midnightInk),
              child: const Text("Revert to Midnight Ink Theme"),
            ),
          ],
        ),
      ),
    );
  }
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DummyScreen(title: "UI Variables check"),
    ),
    // GoRoute(
    //   path: '/home',
    //   builder: (context, state) => const DummyScreen(title: "Screen 4: Home Dashboard"),
    // ),
  ],
);