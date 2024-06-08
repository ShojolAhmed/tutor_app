import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/custom_button.dart';
import 'package:tutor_app/widgets/custom_card.dart';

class TopicCard extends StatelessWidget {
  const TopicCard({
    super.key,
    required this.title,
    required this.description,
    required this.topic,
    required this.session,
    required this.price,
    required this.imageAddress,
  });

  final String title, description, topic, session, price, imageAddress;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageAddress,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6),
          Text('Topic: $topic'),
          const SizedBox(height: 6),
          Text('Session: $session'),
          const SizedBox(height: 6),
          Text('Fee: $price'),
          const SizedBox(height: 10),
          const Align(
            alignment: Alignment.bottomRight,
            child: CustomButton(
              label: 'Learn More',
              isDark: true,
            ),
          ),
        ],
      ),
    );
  }
}
