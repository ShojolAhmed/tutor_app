import 'package:flutter/material.dart';

class FeaturedTutorsCard extends StatelessWidget {
  const FeaturedTutorsCard({
    super.key,
    required this.name,
    required this.subject,
    required this.incomeHourly,
    required this.rating,
    required this.reviews,
    required this.imageAddress,
  });

  final String name, subject, incomeHourly, imageAddress;
  final double rating;
  final int reviews;

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
          // Photo
          Image.asset(
            imageAddress,
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),

          const SizedBox(width: 16),

          SizedBox(
            width: (size.width < 600) ? 130 : 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 6),

                // Name
                Text(
                  name,
                  style: theme.textTheme.titleLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 6),

                // Rating, Subject, Income
                Text('${rating.toString()}/5 (${reviews.toString()})'),
                Text(subject),
                Text('$incomeHourly USD/hr'),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
    );
  }
}
