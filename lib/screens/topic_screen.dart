import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/topic/topic_card.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: const [
          TopicCard(
            imageAddress: 'assets/images/algebra.png',
            title: 'Math Tutoring - Algebra Basics',
            description:
                'Excepteur proident fugiat laborum veniam incididunt fugiat adipisicing. Officia tempor officia nisi laborum.',
            topic: 'Algebra',
            session: 'Online, 1 hour',
            price: '\$50 per session',
          ),
          TopicCard(
            imageAddress: 'assets/images/grammar.jpg',
            title: 'English Grammar Basic to Advance',
            description:
                'Excepteur proident fugiat laborum veniam incididunt fugiat adipisicing. Officia tempor officia nisi laborum.',
            topic: 'Grammar',
            session: 'Offline, 2 hours',
            price: '\$70 per session',
          ),
          TopicCard(
            imageAddress: 'assets/images/algebra.png',
            title: 'Math Tutoring - Algebra Basics',
            description:
                'Excepteur proident fugiat laborum veniam incididunt fugiat adipisicing. Officia tempor officia nisi laborum.',
            topic: 'Algebra',
            session: 'Online, 1 hour',
            price: '\$50 per session',
          ),
        ],
      ),
    );
  }
}
