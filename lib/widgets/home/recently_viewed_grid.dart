import 'package:flutter/material.dart';

class RecentlyViewedGrid extends StatelessWidget {
  const RecentlyViewedGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildListDelegate(
        [
          ClipOval(
            child: Image.asset(
              'assets/images/person_1.png',
              fit: BoxFit.cover,
            ),
          ),
          ClipOval(
            child: Image.asset(
              'assets/images/person_2.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          ClipOval(
            child: Image.asset(
              'assets/images/person_3.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          ClipOval(
            child: Image.asset(
              'assets/images/person_4.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8,
        childAspectRatio: 1.0,
      ),
    );
  }
}
