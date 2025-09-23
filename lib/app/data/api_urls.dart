class ApiUrls {
  static const String baseUrl = "https://upgraded-engine-wr7p457rq7p39p47-3000.app.github.dev/api";

  // --- Auth ---
  static const String login = 'auth/login';
  static const String register = 'auth/register';

  // --- Users ---
  static const String users = 'users';
  static String userById(String id) => 'users/$id';
  static String inactivateUser(String id) => 'users/$id/inactivate';

  // --- Membership Plans ---
  static const String membershipPlans = 'membership-plans';
  static String membershipPlanById(String id) => 'membership-plans/$id';
}
