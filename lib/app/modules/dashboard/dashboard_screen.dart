import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/routes/app_pages.dart';
import 'package:myapp/app/modules/users/users_controller.dart';
import '../../../core/theme/text_styles.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UsersController usersController = Get.find<UsersController>();
    final isSmallScreen = MediaQuery.of(context).size.width < 600;

    final bridesCount = usersController.filteredUsers.where((user) => user.basicInfo!.gender?.toLowerCase() == 'female').length;
    final groomsCount = usersController.filteredUsers.where((user) => user.basicInfo!.gender?.toLowerCase() == 'male').length;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Obx(
                () => GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: isSmallScreen ? 2 : 6, // Changed to 6 for the new card
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: isSmallScreen ? 1 : 1.2,
                  children: [
                    _buildSummaryCard(
                      'Total Users',
                      usersController.filteredUsers.length.toString(),
                      Icons.groups_2,
                      [const Color(0xff6a11cb), const Color(0xff2575fc)],
                      isSmallScreen,
                      onTap: () => Get.toNamed(Routes.users), // Navigate to users screen
                    ),
                    _buildSummaryCard(
                      'Total Brides',
                      bridesCount.toString(),
                      Icons.woman_2,
                      [const Color(0xffc94b4b), const Color(0xff4b134f)],
                      isSmallScreen,
                    ),                    
                    _buildSummaryCard(
                      'Total Grooms',
                      groomsCount.toString(),
                      Icons.man_2,
                      [const Color(0xfff09819), const Color(0xffedde5d)],
                      isSmallScreen,
                    ),
                    _buildSummaryCard(
                      'Membership Plans', // New Card for Membership Plans
                      'Manage',
                      Icons.card_membership,
                      [const Color(0xff00b09b), const Color(0xff96c93d)],
                      isSmallScreen,
                      onTap: () => Get.toNamed(Routes.membershipPlans), // Navigate to membership plans
                    ),
                    _buildSummaryCard(
                      'Active Users',
                      '120', // Placeholder
                      Icons.pie_chart,
                      [const Color(0xffe96443), const Color(0xff904e95)],
                      isSmallScreen,
                    ),                    
                    _buildSummaryCard(
                      'New Users',
                      '56', // Placeholder
                      Icons.person_add_alt_1,
                      [const Color(0xff4776E6), const Color(0xff8E54E9)],
                      isSmallScreen,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              _buildChart(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryCard(
    String title,
    String value,
    IconData icon,
    List<Color> gradientColors,
    bool isSmallScreen, {
    VoidCallback? onTap, // Added onTap callback
  }) {
    return InkWell(
      onTap: onTap, // Use the onTap callback
      child: Card(
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon, size: isSmallScreen ? 40 : 36, color: Colors.white.withAlpha(230)),
                const SizedBox.shrink(),
                Column(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.headingStyle.copyWith(
                        fontSize: isSmallScreen ? 16 : 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    if (value.isNotEmpty) // Display value only if it's not empty
                      Text(
                        value,
                        style: AppTextStyles.headingStyle.copyWith(
                          fontSize: isSmallScreen ? 28 : 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChart() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'User Growth',
              style: AppTextStyles.headingStyle.copyWith(fontSize: 20),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 300,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 3), FlSpot(2.6, 2), FlSpot(4.9, 5), FlSpot(6.8, 3.1), FlSpot(8, 4), FlSpot(9.5, 3), FlSpot(11, 4),
                      ],
                      isCurved: true,
                      color: const Color(0xfffa493d),
                      barWidth: 5,
                      isStrokeCapRound: true,
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),            
          ], 
        ), 
      ),
    );
  }
}
