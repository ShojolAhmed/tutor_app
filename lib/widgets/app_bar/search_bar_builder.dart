import 'package:flutter/material.dart';

class SearchBarBuilder extends StatelessWidget {
  const SearchBarBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return TextField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        hintText: 'Search',
        filled: true,
        fillColor: isDarkMode
            ? theme.colorScheme.onSurfaceVariant.withOpacity(.5)
            : theme.colorScheme.surfaceContainerHighest.withOpacity(.7),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
