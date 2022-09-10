// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on LoginControllerBase, Store {
  late final _$screenStatusAtom =
      Atom(name: 'LoginControllerBase.screenStatus', context: context);

  @override
  ScreenStatus get screenStatus {
    _$screenStatusAtom.reportRead();
    return super.screenStatus;
  }

  @override
  set screenStatus(ScreenStatus value) {
    _$screenStatusAtom.reportWrite(value, super.screenStatus, () {
      super.screenStatus = value;
    });
  }

  late final _$obscureTextPasswordAtom =
      Atom(name: 'LoginControllerBase.obscureTextPassword', context: context);

  @override
  bool get obscureTextPassword {
    _$obscureTextPasswordAtom.reportRead();
    return super.obscureTextPassword;
  }

  @override
  set obscureTextPassword(bool value) {
    _$obscureTextPasswordAtom.reportWrite(value, super.obscureTextPassword, () {
      super.obscureTextPassword = value;
    });
  }

  late final _$signInAsyncAction =
      AsyncAction('LoginControllerBase.signIn', context: context);

  @override
  Future<void> signIn(String email, String password) {
    return _$signInAsyncAction.run(() => super.signIn(email, password));
  }

  late final _$LoginControllerBaseActionController =
      ActionController(name: 'LoginControllerBase', context: context);

  @override
  dynamic setObscureTextPassword() {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.setObscureTextPassword');
    try {
      return super.setObscureTextPassword();
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
screenStatus: ${screenStatus},
obscureTextPassword: ${obscureTextPassword}
    ''';
  }
}
