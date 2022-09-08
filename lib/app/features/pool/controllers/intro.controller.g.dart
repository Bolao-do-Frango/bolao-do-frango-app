// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$IntroController on IntroControllerBase, Store {
  late final _$pageAtom =
      Atom(name: 'IntroControllerBase.page', context: context);

  @override
  double get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(double value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$IntroControllerBaseActionController =
      ActionController(name: 'IntroControllerBase', context: context);

  @override
  void nextPage() {
    final _$actionInfo = _$IntroControllerBaseActionController.startAction(
        name: 'IntroControllerBase.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$IntroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void backPage() {
    final _$actionInfo = _$IntroControllerBaseActionController.startAction(
        name: 'IntroControllerBase.backPage');
    try {
      return super.backPage();
    } finally {
      _$IntroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
page: ${page}
    ''';
  }
}
