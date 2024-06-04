import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.isDark = true,
    required this.label,
  });
  final bool isDark;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor:
            isDark ? theme.colorScheme.surface : theme.colorScheme.primary,
        backgroundColor:
            isDark ? theme.colorScheme.primary : theme.colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            width: 1,
            color: theme.colorScheme.primary,
          ),
        ),
      ),
      child: Text(label),
    );
  }
}
