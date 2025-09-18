part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const login = Paths.login;
  static const splash = Paths.splash;
  static const root = Paths.root;
  static const dashboard = Paths.root + Paths.dashboard;
  static const users = Paths.root + Paths.users;
  static const settings = Paths.root + Paths.settings;
  static const addUser = Paths.root + Paths.addUser;
  static const userDetails = Paths.root + Paths.userDetails;
}

abstract class Paths {
  static const login = '/login';
  static const splash = '/splash';
  static const root = '/root';
  static const dashboard = '/dashboard';
  static const users = '/users';
  static const settings = '/settings';
  static const addUser = '/add-user';
  static const userDetails = '/user-details';
}
