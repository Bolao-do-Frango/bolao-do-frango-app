import 'package:firebase_auth/firebase_auth.dart';

class SplashRepository {
  User? getUser() {
    return FirebaseAuth.instance.currentUser;
  }
}
