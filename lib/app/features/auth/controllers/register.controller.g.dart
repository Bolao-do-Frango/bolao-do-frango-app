// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterController on RegisterControllerBase, Store {
  late final _$screenStatusAtom =
      Atom(name: 'RegisterControllerBase.screenStatus', context: context);

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

  late final _$registerAsyncAction =
      AsyncAction('RegisterControllerBase.register', context: context);

  @override
  Future<void> register(UserEntity userEntity) {
    return _$registerAsyncAction.run(() => super.register(userEntity));
  }

  late final _$registerPixAsyncAction =
      AsyncAction('RegisterControllerBase.registerPix', context: context);

  @override
  Future<void> registerPix(PixEntity pixEntity) {
    return _$registerPixAsyncAction.run(() => super.registerPix(pixEntity));
  }

  late final _$RegisterControllerBaseActionController =
      ActionController(name: 'RegisterControllerBase', context: context);

  @override
  void changeScreenStatus(ScreenStatus screenStatus) {
    final _$actionInfo = _$RegisterControllerBaseActionController.startAction(
        name: 'RegisterControllerBase.changeScreenStatus');
    try {
      return super.changeScreenStatus(screenStatus);
    } finally {
      _$RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
screenStatus: ${screenStatus}
    ''';
  }
}
