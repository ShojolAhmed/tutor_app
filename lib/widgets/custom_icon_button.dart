import 'package:flutter/material.dart';

class CustomIconButtom extends StatelessWidget {
  const CustomIconButtom({
    super.key,
    required this.colorScheme,
    required this.iconData,
  });

  final ColorScheme colorScheme;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: IconButton.filled(
        // padding: const EdgeInsets.all(12),
        style: IconButton.styleFrom(
          backgroundColor: colorScheme.surfaceContainerHighest,
        ),
        onPressed: () {},
        icon: Icon(iconData),
      ),
    );
  }
}
