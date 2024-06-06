import 'package:flutter/material.dart';
import 'package:tutor_app/screens/tution_screen.dart';
import 'package:tutor_app/widgets/custom_button.dart';
import 'package:tutor_app/widgets/custom_card.dart';

class TutionCard extends StatelessWidget {
  const TutionCard({
    super.key,
    required this.name,
    required this.description,
    required this.topic,
    required this.grade,
    required this.daysAndHours,
    required this.genderPreference,
    required this.onlineOrOffline,
    required this.income,
    required this.imageAddress,
  });

  final String name,
      description,
      topic,
      grade,
      daysAndHours,
      genderPreference,
      onlineOrOffline,
      imageAddress;
  final int income;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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

              // Name
              SizedBox(
                width: size.width < 600 ? 160 : 450,
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  name,
                  style: theme.textTheme.titleLarge,
                ),
              ),

              const Spacer(),

              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_rounded),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_rounded),
                  ),
                ],
              ),
            ],
          ),

          // Body
          const SizedBox(height: 10),
          Text(
            description,
            style: theme.textTheme.titleMedium,
          ),

          // Details
          const SizedBox(height: 10),

          DetailsItem(
            item: 'Subject/Topic:',
            value: topic,
          ),
          DetailsItem(
            item: 'Student Class:',
            value: grade,
          ),
          DetailsItem(
            item: 'Days & Hours:',
            value: daysAndHours,
          ),
          DetailsItem(
            item: 'Gender Preference:',
            value: genderPreference,
          ),
          DetailsItem(
            item: 'Online or Offline:',
            value: onlineOrOffline,
          ),

          // Income
          const SizedBox(height: 10),

          Text(
            '\$${income.toString()} per Hour',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),

          // Button
          const SizedBox(height: 10),

          const SizedBox(
            width: double.infinity,
            child: CustomButton(label: 'Apply'),
          ),
        ],
      ),
    );
  }
}
