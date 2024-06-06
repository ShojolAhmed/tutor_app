import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/tutor/tutor_card.dart';

class TutorScreen extends StatelessWidget {
  const TutorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        TutorCard(
          name: 'John Smith',
          subject: 'Mathematics',
          rating: 4.8,
          review: 203,
          income: 40,
          hire: '1.2k+',
          imageAddress: 'assets/images/person_1.png',
        ),
        TutorCard(
          name: 'Elizabeth Zenunim',
          subject: 'Science',
          income: 80,
          rating: 4.9,
          review: 803,
          hire: '8.7k+',
          imageAddress: 'assets/images/person_2.jpeg',
        ),
        TutorCard(
          name: 'Elizabeth Zenunim',
          subject: 'Science',
          income: 80,
          rating: 4.9,
          review: 803,
          hire: '8.7k+',
          imageAddress: 'assets/images/person_2.jpeg',
        ),
        TutorCard(
          name: 'John Smith',
          subject: 'Mathematics',
          rating: 4.8,
          review: 203,
          income: 40,
          hire: '1.2k+',
          imageAddress: 'assets/images/person_1.png',
        ),
      ],
    );
  }
}
