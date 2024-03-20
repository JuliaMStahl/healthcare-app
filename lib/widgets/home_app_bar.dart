import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, Julia!',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              height: 1.5,
            ),
          ),
          Text(
            'May you always be in a good condition',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF9FAFB),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1,
              color: const Color(0xFFE5E7EB),
            ),
          ),
          padding: const EdgeInsets.all(6),
          margin: const EdgeInsets.only(right: 16),
          child: const ImageIcon(
            AssetImage('assets/images/notification-icon.png'),
            size: 20,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
