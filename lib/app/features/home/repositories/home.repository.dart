import 'package:firebase_auth/firebase_auth.dart';

class HomeRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signOut() {
    _auth.signOut();
  }
}
