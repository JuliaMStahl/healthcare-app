import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../constants/app_colors.dart';
import '../constants/app_images.dart';

import '../widgets/home_app_bar.dart';
import '../widgets/home_product_card.dart';
import '../widgets/home_promotion_card.dart';
import '../widgets/home_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Column(
            children: [
              const HomeSearchBar(),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    HomeProductCard(
                      title: 'Book an Appointment',
                      subtitle: 'Find a Doctor or Specialist',
                      iconBorderColor: AppColors.secondaryBlue,
                      iconBackgroundColor: AppColors.tertiaryBlue,
                      backgroundColor: AppColors.septenaryGray,
                      iconPath: AppImages.menuBoardIcon,
                      onTap: () => context.pushNamed('book-appointment'),
                    ),
                    const HomeProductCard(
                      title: 'Appointment\nwith QR',
                      subtitle: 'Queuing without the hustle',
                      iconPath: AppImages.scanIcon,
                      backgroundColor: AppColors.senaryGray,
                      iconBackgroundColor: AppColors.secondaryGreen,
                      iconBorderColor: AppColors.tertiaryGreen,
                    ),
                    const HomeProductCard(
                      title: 'Request Consultation',
                      subtitle: 'Talk to specialist',
                      iconPath: AppImages.messageFavoriteIcon,
                      backgroundColor: AppColors.quinaryGray,
                      iconBackgroundColor: AppColors.secondaryRed,
                      iconBorderColor: AppColors.tertiaryRed,
                    ),
                    const HomeProductCard(
                      title: 'Locate a \nPharmacy',
                      subtitle: 'Purchase Medicines',
                      iconPath: AppImages.buildingIcon,
                      backgroundColor: AppColors.quaternaryGray,
                      iconBackgroundColor: AppColors.secondaryRed,
                      iconBorderColor: AppColors.primaryRed,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: 500,
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    HomePromotionCard(
                      title: 'Prevent the spread of COVID-19 Virus',
                      subtitle: 'Find out now  ',
                      backgroundColor: AppColors.primaryBlue,
                    ),
                    HomePromotionCard(
                      title: 'Prevent the spread of Dengue Virus',
                      subtitle: 'Find out now  ',
                      backgroundColor: AppColors.primaryRed,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: AppColors.primaryBlue,
        unselectedItemColor: AppColors.primaryGray,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImages.homeIcon)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImages.calendarIcon)),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImages.historyIcon)),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImages.chatIcon)),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImages.accountIcon)),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
