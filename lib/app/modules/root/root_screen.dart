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
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: isSmallScreen
            ? AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                iconTheme: const IconThemeData(color: Color(0xfffa493d)),
                title: Text(
                  controller.getTitle(controller.selectedIndex),
                  style: AppTextStyles.headingStyle.copyWith(fontSize: 22),
                ),
              )
            : null,
        drawer: isSmallScreen
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    DrawerHeader(
                      decoration: const BoxDecoration(color: Color(0xfffa493d)),
                      child: Center(
                        child: Text(
                          'Maratha Mangal',
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
              )
            : null,
        body: Row(
          children: [
            if (!isSmallScreen)
              NavigationRail(
                selectedIndex: controller.selectedIndex,
                onDestinationSelected: controller.setSelectedIndex,
                labelType: NavigationRailLabelType.all,
                backgroundColor: Colors.white,
                selectedLabelTextStyle: const TextStyle(color: Color(0xfffa493d)),
                unselectedLabelTextStyle: const TextStyle(color: Colors.grey),
                 leading: Text(
                  'Maratha Mangal',
                  style: AppTextStyles.headingStyle.copyWith(fontSize: 22),
                ),
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.dashboard),
                    label: Text('Dashboard'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.people),
                    label: Text('Users'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.settings),
                    label: Text('Settings'),
                  ),
                ],
              ),
            Expanded(
              child: IndexedStack(
                index: controller.selectedIndex,
                children: const [
                  DashboardScreen(),
                  UsersScreen(),
                  SettingsScreen(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: isSmallScreen
            ? BottomNavigationBar(
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
              )
            : null,
      ),
    );
  }
}
