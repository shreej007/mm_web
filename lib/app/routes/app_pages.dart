import 'package:get/get.dart';
import '../modules/add_user/add_user_binding.dart';
import '../modules/add_user/add_user_screen.dart';
import '../modules/dashboard/dashboard_binding.dart';
import '../modules/dashboard/dashboard_screen.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_screen.dart';
import '../modules/root/root_binding.dart';
import '../modules/root/root_screen.dart';
import '../modules/settings/settings_binding.dart';
import '../modules/settings/settings_screen.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_screen.dart';
import '../modules/user_details/user_details_binding.dart';
import '../modules/user_details/user_details_screen.dart';
import '../modules/users/users_binding.dart';
import '../modules/users/users_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: Paths.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Paths.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Paths.root,
      page: () => const RootScreen(),
      binding: RootBinding(),
      children: [
        GetPage(
          name: Paths.dashboard,
          page: () => const DashboardScreen(),
          binding: DashboardBinding(),
        ),
        GetPage(
          name: Paths.users,
          page: () => const UsersScreen(),
          binding: UsersBinding(),
        ),
        GetPage(
          name: Paths.settings,
          page: () => const SettingsScreen(),
          binding: SettingsBinding(),
        ),
        GetPage(
          name: Paths.addUser,
          page: () => const AddUserScreen(),
          binding: AddUserBinding(),
        ),
        GetPage(
          name: Paths.userDetails,
          page: () => const UserDetailsScreen(),
          binding: UserDetailsBinding(),
        ),
      ],
    ),
  ];
}
