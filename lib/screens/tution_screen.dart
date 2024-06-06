import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/tution/tution_card.dart';

class TutionScreen extends StatelessWidget {
  const TutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        TutionCard(
          imageAddress: 'assets/images/person_2.jpeg',
          name: 'Elizabeth Eni',
          description: 'Math Tutor Needed for High School Student',
          topic: 'Algebra',
          grade: '10th Grade',
          daysAndHours: '3/Week, 2 Hours',
          genderPreference: 'None',
          onlineOrOffline: 'In-person (offline)',
          income: 20,
        ),
        TutionCard(
          imageAddress: 'assets/images/person_3.jpeg',
          name: 'Johny Deep',
          description: 'English Tutor Needed for Middle School Student',
          topic: 'Grammar',
          grade: '7th Grade',
          daysAndHours: '3/Week, 1 Hours',
          genderPreference: 'None',
          onlineOrOffline: 'Online',
          income: 10,
        ),
        TutionCard(
          imageAddress: 'assets/images/person_4.jpeg',
          name: 'Shephard Rony',
          description: 'Math Tutor Needed for High School Student',
          topic: 'Trigonometry',
          grade: '10th Grade',
          daysAndHours: '3/Week, 2 Hours',
          genderPreference: 'None',
          onlineOrOffline: 'In-person (offline)',
          income: 30,
        ),
        TutionCard(
          imageAddress: 'assets/images/person_2.jpeg',
          name: 'Marie Curie',
          description: 'Math Tutor Needed for High School Student',
          topic: 'Algebra',
          grade: '10th Grade',
          daysAndHours: '3/Week, 2 Hours',
          genderPreference: 'None',
          onlineOrOffline: 'In-person (offline)',
          income: 20,
        ),
      ],
    );
  }
}

class DetailsItem extends StatelessWidget {
  const DetailsItem({
    super.key,
    required this.item,
    required this.value,
  });

  final String item, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 4),
        Text(value),
      ],
    );
  }
}
