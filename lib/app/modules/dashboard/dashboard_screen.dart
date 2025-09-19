import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/users/users_controller.dart';
import '../../../core/theme/text_styles.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UsersController usersController = Get.find<UsersController>();
    final isSmallScreen = MediaQuery.of(context).size.width < 600;

    final bridesCount = usersController.filteredUsers
        .where((user) => user.basicInfo.gender.toLowerCase() == 'female')
        .length;
    final groomsCount = usersController.filteredUsers
        .where((user) => user.basicInfo.gender.toLowerCase() == 'male')
        .length;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(
              () => GridView.count(
                shrinkWrap: true,
                crossAxisCount: isSmallScreen ? 2 : 4,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: isSmallScreen ? 1 : 1.8,
                children: [
                  _buildSummaryCard(
                    'Total Users',
                    usersController.filteredUsers.length.toString(),
                    Icons.people,
                    const Color(0xfffa493d),
                    isSmallScreen,
                  ),
                  _buildSummaryCard(
                    'Total Brides',
                    bridesCount.toString(),
                    Icons.female,
                    const Color(0xFF03DAC6),
                    isSmallScreen,
                  ),
                  _buildSummaryCard(
                    'Total Grooms',
                    groomsCount.toString(),
                    Icons.male,
                    Colors.orange,
                    isSmallScreen,
                  ),
                  _buildSummaryCard(
                    'New Users',
                    '56', // Placeholder
                    Icons.person_add,
                    Colors.green,
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
    );
  }

  Widget _buildSummaryCard(
    String title,
    String value,
    IconData icon,
    Color color,
    bool isSmallScreen,
  ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: isSmallScreen ? 40 : 32, color: color),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.headingStyle.copyWith(
                fontSize: isSmallScreen ? 16 : 14,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: AppTextStyles.headingStyle.copyWith(
                fontSize: isSmallScreen ? 24 : 20,
                color: color,
              ),
            ),
          ],
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
                        FlSpot(0, 3),
                        FlSpot(2.6, 2),
                        FlSpot(4.9, 5),
                        FlSpot(6.8, 3.1),
                        FlSpot(8, 4),
                        FlSpot(9.5, 3),
                        FlSpot(11, 4),
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
