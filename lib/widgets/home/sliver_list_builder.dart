import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/custom_button.dart';
import 'package:tutor_app/widgets/home/featured_topics_card.dart';
import 'package:tutor_app/widgets/home/featured_tutors_card.dart';

class SliverListBuilder extends StatelessWidget {
  const SliverListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          // Empower your learning journey
          Text(
            'Empower Your Learning Journey',
            style: theme.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 6),

          const Text(
              'Connecting the students with perfect tutor for academic success'),

          const SizedBox(height: 6),

          const Row(
            children: [
              Expanded(
                child: CustomButton(
                  label: 'Post a Job',
                  isDark: false,
                ),
              ),
              SizedBox(width: 6),
              Expanded(
                child: CustomButton(
                  label: 'Find a Tutor',
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Featured Tutors
          Row(
            children: [
              Text(
                'Featured Tutors',
                style: theme.textTheme.headlineSmall,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right_rounded),
              ),
            ],
          ),
          const FeaturedTutorsCard(
            name: 'John Smith',
            subject: 'Math',
            incomeHourly: '40',
            rating: 4.8,
            reviews: 203,
            imageAddress: 'assets/images/person_1.png',
          ),
          const FeaturedTutorsCard(
            name: 'Elizabeth Zenunim',
            subject: 'Science',
            incomeHourly: '80',
            rating: 4.9,
            reviews: 803,
            imageAddress: 'assets/images/person_2.jpeg',
          ),

          const SizedBox(height: 16),

          // Featured Topics
          Row(
            children: [
              Text(
                'Featured Topics',
                style: theme.textTheme.headlineSmall,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right_rounded),
              ),
            ],
          ),
          const FeaturedTopicsCard(
            title: 'Math Tutoring - Algebra Basics',
            imageAddress: 'assets/images/algebra.png',
          ),
          const FeaturedTopicsCard(
            title: 'English Grammar Basic to Advance',
            imageAddress: 'assets/images/grammar.jpg',
          ),

          const SizedBox(height: 16),

          // Recently Viewed
          Row(
            children: [
              Text(
                'Recently Viewed',
                style: theme.textTheme.headlineSmall,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right_rounded),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
