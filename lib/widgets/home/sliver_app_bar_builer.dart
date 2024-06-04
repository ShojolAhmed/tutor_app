import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/custom_icon_button.dart';

class SliverAppBarBuilder extends StatelessWidget {
  const SliverAppBarBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      centerTitle: false,
      stretch: true,
      expandedHeight: 250.0,
      flexibleSpace: const FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: AssetImage('assets/images/cover.png'),
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Row(
                children: [
                  CustomIconButtom(iconData: Icons.search_rounded),
                  CustomIconButtom(iconData: Icons.notifications),
                  CustomIconButtom(iconData: Icons.person_rounded),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
