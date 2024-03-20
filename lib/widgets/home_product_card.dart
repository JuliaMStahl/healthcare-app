import 'package:flutter/material.dart';

class HomeProductCard extends StatelessWidget {
  const HomeProductCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.backgroundColor,
    required this.iconBackgroundColor,
    required this.iconBorderColor,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final String iconPath;
  final Color backgroundColor;
  final Color iconBackgroundColor;
  final Color iconBorderColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(width: 1, color: iconBorderColor),
              ),
              padding: const EdgeInsets.all(8),
              child: Image.asset(iconPath),
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                height: 1.5,
                color: Color(0xFF18181B),
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                color: Color(0xff71717A),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
