import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../theme/app_theme.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:flutter/cupertino.dart';

class TopBar extends ConsumerWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeState = ref.watch(themeProvider);
    final theme = Theme.of(context);

    return AppBar(
      backgroundColor: theme.appBarTheme.backgroundColor,
      elevation: theme.appBarTheme.elevation,
      centerTitle: false,

      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          'Chapters',
          style: theme.textTheme.displayMedium?.copyWith(
            fontSize: context.fontDisplay,
            fontWeight: AppTokens.weightBold,
            color: theme.colorScheme.onSurface,
          ),
        ),
      ),

      actions: [
        CupertinoButton(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          minSize: 0,
          pressedOpacity: 0.8,
          onPressed: () {
            // todo setup esarch
          },
          child: Icon(
            PhosphorIconsFill.magnifyingGlass,
            color: theme.colorScheme.onSurface,
          ),
        ),

        CupertinoButton(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          minSize: 0,
          pressedOpacity: 0.8,
          onPressed: () {
            ref.read(themeProvider.notifier).toggleDarkMode();
          },
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, anim) {
              final curvedAnim = CurvedAnimation(parent: anim, curve: Curves.easeInOut);
              return FadeTransition(
                opacity: curvedAnim,
                child: child,
              );
            },
            child: Icon(
              themeState.isDark ? PhosphorIconsFill.sun : PhosphorIconsFill.moon,
              key: ValueKey(themeState.isDark ? 'dark' : 'light'),
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),

        CupertinoButton (
          padding: const EdgeInsets.only(left: 4.0, right: 16.0),
          minSize: 0,
          pressedOpacity: 0.8,
          onPressed: () {
            // todo later
          },
          child: Icon(
            PhosphorIconsFill.userCircle,
            color: theme.colorScheme.onSurface,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}