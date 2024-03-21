import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthcare_ui/constants/app_colors.dart';
import 'package:healthcare_ui/widgets/home_search_bar.dart';

import '../widgets/specialtie_list_tile.dart';

class BookAppointmentPage extends StatelessWidget {
  const BookAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Book an appointment',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.chevron_left,
            size: 24,
          ),
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Medical Specialties',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    height: 1.8,
                  ),
                ),
                Text("Wide selection of doctor's specialties"),
                HomeSearchBar(),
              ],
            ),
          ),
          SpecialtieListTile(
            title: 'Ear, Nose & Throat',
            emoji: '👂🏻',
          ),
          SpecialtieListTile(
            title: 'Psychiatrist',
            emoji: '🧠',
          ),
          SpecialtieListTile(
            title: 'Dentist',
            emoji: '🦷',
          ),
          SpecialtieListTile(
            title: 'Dermato-veneorologis',
            emoji: '🤌',
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  'See more',
                  style: TextStyle(
                    color: AppColors.primaryBlue,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.chevron_right,
                  color: AppColors.primaryBlue,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
