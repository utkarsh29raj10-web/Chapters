import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'router/app_routes.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(
      const ProviderScope(
        child: ChaptersApp(),
      ),
  );
}

class ChaptersApp extends ConsumerWidget {
  const ChaptersApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeProvider);

    return MaterialApp.router(
      title: "Chapters",
      theme: AppTheme.getTheme(themeState.type, themeState.isDark),
      routerConfig: goRouter,
    );
  }
}