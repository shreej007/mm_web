part of 'app_pages.dart';

abstract class Routes {
  static const login = Paths.login;
  static const root = Paths.root;
  static const dashboard = '${Paths.root}${Paths.dashboard}';
  static const users = '${Paths.root}${Paths.users}';
  static const settings = '${Paths.root}${Paths.settings}';
  static const addUser = '${Paths.root}${Paths.addUser}';
  static const userDetails = '${Paths.root}${Paths.userDetails}';
  static const membership = '${Paths.root}${Paths.membership}';
  static const addEditMembership = '${Paths.root}${Paths.addEditMembership}';
  static const membershipPlans = '${Paths.root}${Paths.membershipPlans}';
  static const addMembershipPlan = '${Paths.root}${Paths.addMembershipPlan}';
  static const editMembershipPlan = '${Paths.root}${Paths.editMembershipPlan}';
}

abstract class Paths {
  static const login = '/login';
  static const root = '/root';
  static const dashboard = '/dashboard';
  static const users = '/users';
  static const settings = '/settings';
  static const addUser = '/add_user';
  static const userDetails = '/user_details';
  static const membership = '/membership';
  static const addEditMembership = '/add_edit_membership';
  static const membershipPlans = '/membership_plans';
  static const addMembershipPlan = '/add_membership_plan';
  static const editMembershipPlan = '/edit_membership_plan';
}
