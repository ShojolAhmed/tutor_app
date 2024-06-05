import 'package:flutter/material.dart';
import 'package:tutor_app/widgets/app_bar/search_bar_builder.dart';
import 'package:tutor_app/widgets/custom_icon_button.dart';

class DefaultAppBarBuilder extends StatelessWidget
    implements PreferredSizeWidget {
  const DefaultAppBarBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SearchBarBuilder(),
          ),
          CustomIconButtom(
            iconData: Icons.notifications,
          ),
          CustomIconButtom(
            iconData: Icons.person_rounded,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
