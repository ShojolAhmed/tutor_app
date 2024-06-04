import 'package:flutter/material.dart';

class FeaturedTopicsCard extends StatelessWidget {
  const FeaturedTopicsCard({
    super.key,
    required this.title,
    required this.imageAddress,
  });

  final String title, imageAddress;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageAddress,
            height: 80,
            width: 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: size.width < 600 ? 180 : 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                const Text('Learn More >'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
