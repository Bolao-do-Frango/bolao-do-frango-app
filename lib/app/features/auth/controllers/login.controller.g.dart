// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginController on _LoginControllerBase, Store {
  late final _$obscureTextPasswordAtom =
      Atom(name: '_LoginControllerBase.obscureTextPassword', context: context);

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

  late final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase', context: context);

  @override
  dynamic setObscureTextPassword() {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setObscureTextPassword');
    try {
      return super.setObscureTextPassword();
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
obscureTextPassword: ${obscureTextPassword}
    ''';
  }
}
