import 'package:firebase_auth/firebase_auth.dart';

import '../exceptions/login.exception.dart';

class LoginRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'invalid-email':
          throw LoginException('Email inválido!');
        case 'wrong-password':
          throw LoginException('Senha incorreta!');
        default:
          throw LoginException('Não foi possível realizar o login');
      }
    }
  }
}
