import 'package:flutter/material.dart';
import 'package:healthcare_ui/constants/app_colors.dart';
import 'package:healthcare_ui/constants/app_images.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: 'symptoms, diseases...',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: AppColors.secondaryGray,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: AppColors.secondaryGray,
                    width: 2,
                  ),
                ),
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(12),
                  child: ImageIcon(
                    AssetImage(AppImages.searchIcon),
                    size: 24,
                    color: AppColors.tertiaryGray,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: AppColors.septenaryGray,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(12),
              child: const ImageIcon(
                AssetImage(AppImages.filterIcon),
                color: AppColors.primaryBlue,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
