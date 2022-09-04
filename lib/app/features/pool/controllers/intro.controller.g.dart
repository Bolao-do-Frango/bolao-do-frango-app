// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$IntroController on IntroControllerBase, Store {
  late final _$isPlayoffAtom =
      Atom(name: 'IntroControllerBase.isPlayoff', context: context);

  @override
  bool get isPlayoff {
    _$isPlayoffAtom.reportRead();
    return super.isPlayoff;
  }

  @override
  set isPlayoff(bool value) {
    _$isPlayoffAtom.reportWrite(value, super.isPlayoff, () {
      super.isPlayoff = value;
    });
  }

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

  late final _$imageAtom =
      Atom(name: 'IntroControllerBase.image', context: context);

  @override
  String get image {
    _$imageAtom.reportRead();
    return super.image;
  }

  @override
  set image(String value) {
    _$imageAtom.reportWrite(value, super.image, () {
      super.image = value;
    });
  }

  late final _$titleAtom =
      Atom(name: 'IntroControllerBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$subtitleAtom =
      Atom(name: 'IntroControllerBase.subtitle', context: context);

  @override
  String get subtitle {
    _$subtitleAtom.reportRead();
    return super.subtitle;
  }

  @override
  set subtitle(String value) {
    _$subtitleAtom.reportWrite(value, super.subtitle, () {
      super.subtitle = value;
    });
  }

  late final _$IntroControllerBaseActionController =
      ActionController(name: 'IntroControllerBase', context: context);

  @override
  void setIsPlayoff(bool value) {
    final _$actionInfo = _$IntroControllerBaseActionController.startAction(
        name: 'IntroControllerBase.setIsPlayoff');
    try {
      return super.setIsPlayoff(value);
    } finally {
      _$IntroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

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
  void buildImage() {
    final _$actionInfo = _$IntroControllerBaseActionController.startAction(
        name: 'IntroControllerBase.buildImage');
    try {
      return super.buildImage();
    } finally {
      _$IntroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void buildTitle() {
    final _$actionInfo = _$IntroControllerBaseActionController.startAction(
        name: 'IntroControllerBase.buildTitle');
    try {
      return super.buildTitle();
    } finally {
      _$IntroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void buildSubtitle() {
    final _$actionInfo = _$IntroControllerBaseActionController.startAction(
        name: 'IntroControllerBase.buildSubtitle');
    try {
      return super.buildSubtitle();
    } finally {
      _$IntroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isPlayoff: ${isPlayoff},
page: ${page},
image: ${image},
title: ${title},
subtitle: ${subtitle}
    ''';
  }
}
