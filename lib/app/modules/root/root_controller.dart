import 'package:get/get.dart';

class RootController extends GetxController {
  final _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  void setSelectedIndex(int index) {
    _selectedIndex.value = index;
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'Dashboard';
      case 1:
        return 'Users';
      case 2:
        return 'Membership';
      case 3:
        return 'Settings';
      default:
        return 'Dashboard';
    }
  }
}
