import 'package:firebase_auth/firebase_auth.dart';

import '../exceptions/register.exception.dart';

class RegisterRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> registerUser(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw RegisterException(
            'Sua senha é muito fraca! Tente uma nova senha.');
      } else if (e.code == 'email-already-in-use') {
        throw RegisterException('Este email já está cadastrado');
      } else {
        throw RegisterException(
            'Não foi possível fazer o seu cadastro, tente novamente');
      }
    }
  }
}
