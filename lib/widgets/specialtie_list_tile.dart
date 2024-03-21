import 'package:flutter/material.dart';
import 'package:healthcare_ui/constants/app_colors.dart';

class SpecialtieListTile extends StatelessWidget {
  const SpecialtieListTile({
    super.key,
    required this.title,
    required this.emoji,
  });

  final String title;
  final String emoji;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        "Wide selection of doctor's specialties",
        style: TextStyle(
          fontSize: 12,
          color: AppColors.tertiaryGray,
        ),
      ),
      leading: CircleAvatar(
        backgroundColor: const Color(0xFFC6D4F1),
        radius: 26,
        child: CircleAvatar(
          backgroundColor: AppColors.septenaryGray,
          radius: 25,
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 28),
          ),
        ),
      ),
      trailing: const Icon(
        Icons.chevron_right,
        color: AppColors.primaryBlue,
        size: 36,
      ),
    );
  }
}
