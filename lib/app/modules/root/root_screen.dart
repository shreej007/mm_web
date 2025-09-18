import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../dashboard/dashboard_screen.dart';
import 'root_controller.dart';
import '../settings/settings_screen.dart';
import '../users/users_screen.dart';
import '../../../core/theme/text_styles.dart';

class RootScreen extends GetView<RootController> {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Color(0xfffa493d)),
          title: Text(
            controller.getTitle(controller.selectedIndex),
            style: AppTextStyles.headingStyle.copyWith(fontSize: 22),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Color(0xfffa493d)),
                child: Center(
                  child: Text(
                    'Matrimony',
                    style: AppTextStyles.headingStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.dashboard, color: Color(0xfffa493d)),
                title: const Text('Dashboard'),
                onTap: () {
                  controller.setSelectedIndex(0);
                  Get.back();
                },
              ),
              ListTile(
                leading: const Icon(Icons.people, color: Color(0xfffa493d)),
                title: const Text('Users'),
                onTap: () {
                  controller.setSelectedIndex(1);
                  Get.back();
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Color(0xfffa493d)),
                title: const Text('Settings'),
                onTap: () {
                  controller.setSelectedIndex(2);
                  Get.back();
                },
              ),
            ],
          ),
        ),
        body: Card(
          margin: const EdgeInsets.all(16),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: IndexedStack(
              index: controller.selectedIndex,
              children: const [
                DashboardScreen(),
                UsersScreen(),
                SettingsScreen(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: controller.setSelectedIndex,
          selectedItemColor: const Color(0xfffa493d),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Users'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
