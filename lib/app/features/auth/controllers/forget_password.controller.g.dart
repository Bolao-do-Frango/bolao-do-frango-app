// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ForgetPasswordController on ForgetPasswordControllerBase, Store {
  late final _$screenStatusAtom =
      Atom(name: 'ForgetPasswordControllerBase.screenStatus', context: context);

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

  late final _$resetPasswordAsyncAction = AsyncAction(
      'ForgetPasswordControllerBase.resetPassword',
      context: context);

  @override
  Future<void> resetPassword(String email) {
    return _$resetPasswordAsyncAction.run(() => super.resetPassword(email));
  }

  @override
  String toString() {
    return '''
screenStatus: ${screenStatus}
    ''';
  }
}
