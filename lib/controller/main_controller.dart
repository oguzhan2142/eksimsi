import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainController extends GetxController {
  String getDisplayName() {
    String? fullName = FirebaseAuth.instance.currentUser?.displayName;

    if (fullName == null) {
      return '';
    }

    return fullName.split(' ').first;
  }
}
