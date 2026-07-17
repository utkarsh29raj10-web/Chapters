import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/app_theme.dart';
import '../database/database_helper.dart';

class DummyScreen extends ConsumerWidget {
  final String title;
  const DummyScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final db = await DatabaseHelper.instance.database;
                await db.execute("INSERT INTO Chapters (name, description, created_at) VALUES ('My Life', 'Test', '2026-07-17')");
                await db.execute("INSERT INTO Journals (chapter_id, name, is_locked) VALUES (1, 'Daily Thoughts', 0)");
                await db.execute("INSERT INTO Entries (journal_id, content, date, is_locked) VALUES (1, 'I had a wonderful cup of coffee today', '2026-07-17', 0)");
                print("Dummy Entry Inserted!");
              },
              child: const Text('1. Insert Dummy Entry ("coffee")'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final db = await DatabaseHelper.instance.database;

                final results = await db.rawQuery("SELECT * FROM EntriesSearch WHERE content MATCH 'coffee'");

                if (results.isNotEmpty) {
                  print("FTS5 SUCCESS! Found: \${results.first['content']}");
                } else {
                  print("FTS5 FAILED: No results found.");
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.primary),
              child: const Text('2. Search FTS5 for "coffee"', style: TextStyle(color: Colors.white)),
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
      builder: (context, state) => const DummyScreen(title: 'FTS5 Search Test'),
    ),
  ],
);