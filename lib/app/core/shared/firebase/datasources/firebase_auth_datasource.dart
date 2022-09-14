import 'package:firebase_auth/firebase_auth.dart';

import '../exceptions/firebase_auth_exception.dart';

class FirebaseAuthDatasource {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<void> registerUser(String email, String password) async {
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

  static Future<void> signIn(String email, String password) async {
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

  static Future<void> sendNewPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'auth/user-not-found':
          throw SendNewPasswordException('Usuário não encontrado!');
        case 'auth/invalid-email':
          throw SendNewPasswordException('Email inválido!');
        default:
          throw SendNewPasswordException('Não foi possível enviar uma nova senha');
      }
    }
  }

  static User? getUser() {
    return _auth.currentUser;
  }
}
