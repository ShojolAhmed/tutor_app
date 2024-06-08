import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    required this.onTap,
  });

  final Widget child;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onTap,
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHigh,
            borderRadius: BorderRadius.circular(10),
          ),
          child: child,
        ),
      ),
    );
  }
}
