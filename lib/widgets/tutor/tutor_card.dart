import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/custom_button.dart';

class TutorCard extends StatelessWidget {
  const TutorCard({
    super.key,
    required this.name,
    required this.subject,
    required this.rating,
    required this.review,
    required this.income,
    required this.hire,
    required this.imageAddress,
  });

  final String name, subject, hire, imageAddress;
  final int review, income;
  final double rating;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: theme.colorScheme.surfaceContainerHigh,
          ),
          child: Column(
            children: [
              // Photo, Name, Rating
              Row(
                children: [
                  // Photo
                  Image.asset(
                    imageAddress,
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(width: 10),

                  SizedBox(
                    width: size.width < 600 ? 200 : 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name
                        Text(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          name,
                          style: theme.textTheme.titleLarge,
                        ),
                        Text('${rating.toString()}/5 (${review.toString()})'),
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

              // Body
              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${income.toString()} USD/hr'),
                        const SizedBox(height: 6),
                        Text(subject),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$hire Hire'),
                        const SizedBox(height: 6),
                        const Text('Offer Online Service'),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 6),

              const Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                'Excepteur irure in magna aliquip minim velit. Magna exercitation amet nulla voluptate magna. In ipsum laboris occaecat.',
              ),

              // Buttons
              const SizedBox(height: 6),

              const Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      label: 'Message',
                      isDark: false,
                    ),
                  ),
                  SizedBox(width: 6),
                  Expanded(child: CustomButton(label: 'Hire')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
