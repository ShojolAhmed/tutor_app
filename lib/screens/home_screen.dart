import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/home/recently_viewed_grid.dart';
import 'package:tutor_app/widgets/home/sliver_app_bar_builer.dart';
import 'package:tutor_app/widgets/home/sliver_list_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBarBuilder(),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: SliverListBuilder(),
        ),
        SliverPadding(
          padding: EdgeInsets.only(right: 16, left: 16, bottom: 26),
          sliver: RecentlyViewedGrid(),
        ),
      ],
    );
  }
}
